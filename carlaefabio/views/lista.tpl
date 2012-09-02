<html>
<head></head>
<body>
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
</body>
</html>