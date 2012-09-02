<html>
<head></head>
<body>
<table>
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
	</tr>
</table>
</body>
</html>