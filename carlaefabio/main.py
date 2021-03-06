# -*- coding: utf-8 -*-
#from google.appengine.ext import webapp, db
#from google.appengine.ext.webapp.util import run_wsgi_app
#from google.appengine.api import users
#from google.appengine.ext.webapp import template
#
#import os
#
#import logging
#
#class MainPage(webapp.RequestHandler):
#    def get(self):
#        template_values = {
#            }
#
#        path = os.path.join(os.path.dirname(__file__), 'index.html')
#        self.response.out.write(template.render(path, template_values))
#
#application = webapp.WSGIApplication(
#                                     [('/', MainPage)],
#                                     debug=True)
#
#
#def main():
#    run_wsgi_app(application)
#
#if __name__ == "__main__":
#    main()

import bottle
from bottle import route, run, template, request, view

from google.appengine.ext import db
from google.appengine.api import mail
from google.appengine.api import users
import os

bottle.debug(True)
bottle.TEMPLATE_PATH.insert(0,os.path.join(os.path.dirname(__file__), 'views'))

class Convidado(db.Model):
    nome = db.StringProperty()
    email = db.StringProperty()
    telefone = db.StringProperty()
    presenca = db.BooleanProperty()
    date = db.DateTimeProperty(auto_now_add=True)
    acompanhantes = db.ListProperty(str)

class Presente(db.Model):
    nome = db.StringProperty()
    valor = db.FloatProperty()
    mensagem = db.TextProperty()

@route('/')
@view('index')
def index(post=0):
    return {'post':post}

@route('/', method='POST')
def rsvp():
    if 'cota' in request.forms:
      return presente()
    convidado = Convidado(nome=request.forms.getunicode('nome-0'),
                          email=request.forms['email'],
                          telefone=request.forms['telefone'],
                          presenca=request.forms['presenca']=='true',
                          acompanhantes=[request.forms.getunicode(k) for k, v in request.forms.items() if 'nome' in k and k != 'nome-0'])
    convidado.put()

    sender_address = "Carla e Fábio <carlaefabio@carlaefabio.com.br>"
    subject = "[PRESENCA]"
    if convidado.presenca:
      subject += "[SIM]"
      body = u""" 
Confirmação de presença
Convidado: {0} 
Telefone: {2}
Email: {3}

Acompanhantes: 
{1}""".format(convidado.nome, ', '.join(convidado.acompanhantes), convidado.telefone, convidado.email)
    else:
      subject += "[NAO]"
      body = u""" Convidado {0} confirma ausência""".format(convidado.nome)
    subject += convidado.nome
    
    mail.send_mail(sender_address, "carlaguill@gmail.com", subject, body)
    mail.send_mail(sender_address, "fabiomachadodiniz@gmail.com", subject, body)
    mail.send_mail(sender_address, sender_address, subject, body)

    if convidado.presenca and convidado.email:
      subject = "Confirmação de Presença"
      body = """
Olá,

Obrigado por confirmar a presença em nosso casamento.
Caso ocorra algum imprevisto e você não possa comparecer, por favor nos avise no email: carlaefabio@carlaefabio.com.br

Abraços,
Carla e Fábio"""
      mail.send_mail(sender_address, convidado.email, subject, body)

    return index(1)

def presente():
  valores = {"Margarida": 50.00, 
              "Rosa": 100.00, 
              "Tulipa": 150.00, 
              "Lótus": 250.00, 
              "Orquídea": 350.00, 
              "Sakura": 500.00}

  if request.forms['outro_valor']:
    valor = float(request.forms['outro_valor'].replace(',','.'))
  else:
    valor = valores[request.forms['cota']]

  presente = Presente(nome=request.forms.getunicode('nome'),
                      valor=valor, mensagem=request.forms.getunicode('mensagem'))

  presente.put()
  body = u"""Quem: {0} 
Valor: R$ {1}

Mensagem: 
{2}""".format(presente.nome, presente.valor, presente.mensagem)
  sender_address = "Carla e Fábio <carlaefabio@carlaefabio.com.br>"
  mail.send_mail(sender_address, "carlaguill@gmail.com", "PRESENTE ENVIADO =)", body)
  mail.send_mail(sender_address, "fabiomachadodiniz@gmail.com", "PRESENTE ENVIADO =)", body)

  return index(2)

@route('/lista')
@view('lista')
def lista():

  user = users.get_current_user()

  if not user:
    from bottle import redirect
    redirect(users.create_login_url(request.url), 303)

  output = []
  output_n = []
  num = 0
  num_n = 0
  if users.is_current_user_admin():
    for convidado in Convidado.all().filter('presenca', True):
      output.append([convidado.nome, convidado.telefone, convidado.email, ', '.join(convidado.acompanhantes)])
      num += 1 + len(convidado.acompanhantes)
    for convidado in Convidado.all().filter('presenca', False):
      output_n.append([convidado.nome, convidado.telefone, convidado.email, ', '.join(convidado.acompanhantes)])
      num_n += 1 + len(convidado.acompanhantes)
  return {'output':output, 'num':num,
          'output_n':output_n, 'num_n':num_n}

@route('/presentes')
@view('presentes')
def presentes():

  user = users.get_current_user()

  if not user:
    from bottle import redirect
    redirect(users.create_login_url(request.url), 303)

  output = []
  num = 0
  if users.is_current_user_admin():
    for presente in Presente.all():
      output.append([presente.nome, presente.valor, presente.mensagem])
      num += presente.valor
  return {'output':output, 'num':num}

# ... build or import your bottle application here ...
run(server='gae')