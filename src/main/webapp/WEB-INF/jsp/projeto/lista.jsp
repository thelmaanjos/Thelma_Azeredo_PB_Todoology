<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.83.1">
<title>Projeto</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/checkout/">
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.css"
	rel="stylesheet" />
<link rel="stylesheet" type="text/css" media="screen"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->

<link href="../css/sidebar.css" rel="stylesheet">
</head>
<body class="bg-light">
	<div class="side">
		<c:import url="/WEB-INF/jsp/sidemenu.jsp" />

		<div class="container px-4 py-5" id="hanging-icons">
			<h1 class="pb-2 text-center">Lista de projetos</h1>
			<div class="row g-4 py-5 row-cols-1">
				<c:if test="${not empty mensagem}">
					<div class="alert alert-danger" role="alert">${mensagem}</div>
				</c:if>
				<c:if test="${not empty projetos}">
					<a href="/projeto" class="w-80 btn btn-dark btn-md my-5"
						type="submit">Criar novo projeto</a>
					<h3 class="text-center pb-5">Projetos criados:</h3>
					<table class="table table-striped">
						<thead class="table-dark">
							<tr>
								<th scope="col">#</th>
								<th scope="col">Nome do projeto</th>
								<th scope="col">Autor</th>
								<th scope="col">Descrição</th>
								<th scope="col">Data de criação</th>
								<th scope="col">Projeto colaborativo?</th>
								<th scope="col">Ações</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="p" items="${projetos}">
								<tr>
									<td>${p.id}</td>
									<td>${p.nomeProj}</td>
									<td>${p.autor}</td>
									<td>${p.descProj}</td>
									<td>${p.dataCriacao}</td>
									<td>${p.hasCollab}</td>
									<td><a href="/projeto/${p.id}/excluir"
										class="text-decoration-none">excluir</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
				<c:if test="${empty projetos}">
					<h3 class="text-center">Não existem projetos cadastrados.</h3>
					<a href="/projeto" class="w-80 btn btn-dark btn-md my-5"
						type="submit">Criar um novo projeto</a>
				</c:if>
			</div>
			<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
			<script
				src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
			<!-- Plugin pro Datapicker novo -->
			<script
				src='https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.6.1/js/bootstrap-datepicker.min.js'></script>
			<script>
				$('.input-group.date').datepicker({
					format : "mm/dd/yyyy"
				});
			</script>
		</div>
	</div>
</body>
</html>