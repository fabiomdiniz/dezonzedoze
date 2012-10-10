<html>
<head></head>
<body>
<h1>Presença</h1>
<table border="1">
	<tr>
		<th>Nome</th>
		<th>Telefone</th>
		<th>Email</th>
		<th>Acompanhantes</th>
	</tr>
	%for row in output:
	<tr>
		%for content in row:
		<td>{{ content }}</td>
		%end
	</tr>
	%end
</table>
Total de convidados: {{num}}

<br>
<h1>Ausência</h1>
<table border="1">
	<tr>
		<th>Nome</th>
		<th>Telefone</th>
		<th>Email</th>
		<th>Acompanhantes</th>
	</tr>
	%for row in output_n:
	<tr>
		%for content in row:
		<td>{{ content }}</td>
		%end
	</tr>
	%end
</table>
Total de ausentes: {{num_n}}

</body>
</html>