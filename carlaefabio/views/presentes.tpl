<html>
<head></head>
<body>
<table border="1">
	<tr>
		<th>Nome</th>
		<th>Valor</th>
		<th>Mensagem</th>
	</tr>
	%for row in output:
	<tr>
		%for content in row:
		<td>{{ content }}</td>
		%end
	</tr>
	%end
</table>
Total de presentes: {{num}}
</body>
</html>