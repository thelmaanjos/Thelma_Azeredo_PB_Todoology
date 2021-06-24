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
<title>Análise</title>
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
			<h1 class="pb-2 text-center">Tarefa - análise</h1>
			<div class="row g-4 py-5 row-cols-1">
				<div class="col d-flex align-items-start">
					<form class="needs-validation" novalidate action="/analise/incluir"
						method="post">
						<div class="row g-3">
							<div class="col-sm-6">
								<label class="form-label fw-bold">Atividade associada:</label> <select
									class="form-select" name="atividade.id" required>
									<option selected>Escolha a atividade relacionada</option>
									<c:forEach var="a" items="${atividades}">
										<option value="${a.id}">${a.nome}</option>
									</c:forEach>
								</select>
								<div class="invalid-feedback">Selecione um projeto</div>
							</div>
							<div class="col-sm-6">
								<label class="form-label fw-bold">Nome da tarefa em
									análise</label> <input type="text" class="form-control" name="titulo"
									value="Retrospectiva de reunião com o cliente" required>
								<div class="invalid-feedback">Insira um nome</div>
							</div>
							<div class="col-sm-6">
								<label for="username" class="form-label fw-bold">Autor</label>
								<div class="input-group has-validation">
									<span class="input-group-text">@</span> <input type="text"
										class="form-control" name="autor" value="${user.nome}"
										required>
									<div class="invalid-feedback">Insira o autor da atividade
									</div>
								</div>
							</div>
							<div class="col-sm-4">
								<label class="form-label fw-bold">Quantidade de
									requisitos funcionais</label> <input type="number" class="form-control"
									name="qtdReqFunc" value="10" required>
								<div class="invalid-feedback">Insira a quantidade</div>
							</div>
							<div class="col-sm-4">
								<label class="form-label fw-bold">Quantidade de
									requisitos não funcionais</label> <input type="number"
									class="form-control" name="qtdReqNaoFunc" value="4" required>
								<div class="invalid-feedback">Insira a quantidade</div>
							</div>
							<div class="col-sm-4">
								<label class="form-label fw-bold">Total do orçamento</label> <input
									type="number" class="form-control" name="orcamento"
									value="15.536" required>
								<div class="invalid-feedback">Insira o valor</div>
							</div>
							<div class="col-sm-6">
								<label for="text" class="form-label fw-bold">Descreva
									seus requisitos funcionais </label>
								<textarea class="form-control" id="message" name="descRecFunc"
									rows="3"
									placeholder="1. O sistema deve oferecer crud completo, 2. O sistema deve permitir que novos clientes se cadasterem"></textarea>
							</div>
							<div class="col-sm-6">
								<label for="text" class="form-label fw-bold">Descreva
									seus requisitos não funcionais </label>
								<textarea class="form-control" id="message"
									name="descRecNaoFunc" rows="3"
									placeholder="1. I sistema deve procurar o produto em até 3 segundos, 2. O sistema deve possuir design responsivo"></textarea>
							</div>
							<div class="col-sm-6">
								<label for="text" class="mb-3 fw-bold">Está validado?</label>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="isValidated"
										value="true" checked> <label class="form-check-label">Sim</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="isValidated"
										value="false"> <label class="form-check-label">Não</label>
								</div>
							</div>
							<div class="col-sm-6">
								<label for="text" class="mb-3 fw-bold">Está verificado?</label>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="isVerificated" value="true" checked> <label
										class="form-check-label">Sim</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="isVerificated" value="false"> <label
										class="form-check-label">Não</label>
								</div>
							</div>
							<div class="col-sm-6">
								<label for="text" class="form-label fw-bold">Data de
									início</label>
								<!-- Datepicker as text field -->
								<div class="input-group date " data-date-format="mm/ddd/yyyy">
									<input type="text" name="inicio" class="form-control"
										placeholder="dd/mm/yyyy">
									<div class="input-group-addon">
										<span class="glyphicon glyphicon-th"></span>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<label for="text" class="form-label fw-bold">Data de
									término</label>
								<!-- Datepicker as text field -->
								<div class="input-group date " data-date-format="mm/ddd/yyyy">
									<input type="text" name="termino" class="form-control"
										placeholder="dd/mm/yyyy">
									<div class="input-group-addon">
										<span class="glyphicon glyphicon-th"></span>
									</div>
								</div>
							</div>
							<hr class="my-4">
						</div>
						<div class="d-flex justify-content-center">
							<button class="w-80 btn btn-dark btn-md my-5" type="submit">Criar
								tarefa</button>
						</div>
					</form>

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
	</div>
</body>
</html>