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
from bottle import route, run, template, request

from google.appengine.ext import db

bottle.debug(True)

class Convidado(db.Model):
    nome = db.StringProperty()
    email = db.StringProperty()
    telefone = db.StringProperty()
    presenca = db.BooleanProperty()
    date = db.DateTimeProperty(auto_now_add=True)
    acompanhantes = db.ListProperty(str)

@route('/')
def index():
    return template('index')

@route('/', method='POST')
def rsvp():
    convidado = Convidado(nome=request.forms['nome-0'],
                          email=request.forms['email'],
                          telefone=request.forms['telefone'],
                          presenca=request.forms['presenca']=='true',
                          acompanhantes=[v for k, v in request.forms.items() if 'nome' in k and k != 'nome-0'])
    convidado.put()
    return index()

# ... build or import your bottle application here ...
run(server='gae')