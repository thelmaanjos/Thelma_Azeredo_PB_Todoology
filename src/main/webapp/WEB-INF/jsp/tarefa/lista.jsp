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
			<h1 class="pb-2 text-center">Lista de Tarefas</h1>
			<div class="py-3 p-5">
				<c:if test="${not empty tarefas}">
					<table class="table table-striped">
						<thead class="table-dark">
							<tr>
								<th scope="col">#</th>
								<th scope="col">titulo</th>
								<th scope="col">Autor</th>
								<th scope="col">Início</th>
								<th scope="col">Término</th>
								<th scope="col">Ações</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="t" items="${tarefas}">
								<tr>
									<td>${t.id}</td>
									<td>${t.titulo}</td>
									<td>${t.autor}</td>
									<td>${t.inicio}</td>
									<td>${t.termino}</td>
									<td><a href="/tarefa/${t.id}/excluir"
										class="text-decoration-none">excluir</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
				<c:if test="${empty tarefas}">
					<h3 class="text-center">Não existem tarefas criadas.</h3>
				</c:if>
			</div>
		</div>
	</div>
</body>
</html>