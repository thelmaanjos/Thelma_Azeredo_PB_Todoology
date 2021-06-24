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
<title>Implantação</title>
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
			<h1 class="pb-2 text-center">Tarefa - Implantação</h1>
			<div class="row g-4 py-5 row-cols-1">

				<c:if test="${not empty implantacoes}">
				<a href="/implantacao" class="w-80 btn btn-dark btn-md my-5" type="submit">Criar nova
								tarefa</a>
					<h3 class="text-center pb-5">Tarefas em implantação criadas:</h3>
					<table class="table table-striped">
						<thead class="table-dark">
							<tr>
								<th scope="col">#</th>
								<th scope="col">titulo</th>
								<th scope="col">autor</th>
								<th scope="col">Programa funciona?</th>
								<th scope="col">Programa instalado?</th>
								<th scope="col">Funcionários treinados?</th>
								<th scope="col">Qtd funcionários treinados</th>
								<th scope="col">Considerações finais</th>
								<th scope="col">Data de entrega final</th>
								<th scope="col">Data de início</th>
								<th scope="col">Data de término</th>
								<th scope="col">Ações</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="i" items="${implantacoes}">
								<tr>
									<td>${i.id}</td>
									<td>${i.titulo}</td>
									<td>${i.autor}</td>
									<td>${i.isSystemWorking}</td>
									<td>${i.isInstalled}</td>
									<td>${i.isFuncTrained}</td>
									<td>${i.qtdFuncTreinados}</td>
									<td>${i.consideracoes}</td>
									<td>${i.dataEntrega}</td>
									<td>${i.inicio}</td>
									<td>${i.termino}</td>
									<td><a href="/implantacao/${i.id}/excluir"
										class="text-decoration-none">excluir</a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</c:if>
				<c:if test="${empty implantacoes}">
					<h3 class="text-center">Não existem tarefas em implantação.</h3>
					<a href="/implantacao" class="w-80 btn btn-dark btn-md my-5" type="submit">Criar uma
								tarefa</a>
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