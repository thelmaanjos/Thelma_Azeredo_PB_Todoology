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
<title>Desenvolvimento</title>
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
			<h1 class="pb-2 text-center">Tarefa - Desenvolvimento</h1>
			<div class="row g-4 py-5 row-cols-1">
				<div class="col d-flex align-items-start">
					<form class="needs-validation" novalidate
						action="/desenvolvimento/incluir" method="post">
						<div class="row g-3">
							<div class="col-sm-6">
								<label class="form-label fw-bold">Nome da tarefa em
									desenvolvimento</label> <input type="text" class="form-control"
									name="titulo" value="Assessment Projeto de Bloco" required>
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
							<div class="col-sm-6">
								<label for="text" class="form-label fw-bold">Descrição
									computacional</label>
								<textarea class="form-control" id="message" name="descComputacional" rows="3"
								placeholder="comente!">
	              			</textarea>
							</div>
							<div class="col-sm-6">
								<label for="text" class="form-label fw-bold">Linguagem
									de programação</label>
								<textarea class="form-control" id="message" name="lingProgram" rows="3"
								placeholder="comente!">
	              			</textarea>
							</div>
							<div class="col-sm-4">
								<label for="text" class="mb-3 fw-bold">Usará framework?</label>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="hasFramework" value="true" checked> <label
										class="form-check-label">Sim</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio"
										name="hasFramework" value="false"> <label
										class="form-check-label">Não</label>
								</div>
							</div>
							<div class="col-sm-4">
								<label for="text" class="mb-3 fw-bold">Usará banco de
									dados?</label>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="hassbgd"
										value="true" checked> <label class="form-check-label">Sim</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="hassbgd"
										value="false"> <label class="form-check-label">Não</label>
								</div>
							</div>
							<div class="col-sm-4">
								<label class="form-label fw-bold">Quantidade de testes
									concluídos</label> <input type="number" class="form-control"
									name="qtdTestesConcluidos" value="11" required>
								<div class="invalid-feedback">Insira a porcentagem</div>
							</div>
							<div class="col-sm-4">
								<label class="form-label fw-bold">Quantidade de erros </label> <input
									type="number" class="form-control" name="qtdErros" value="1"
									required>
								<div class="invalid-feedback">Insira a porcentagem</div>
							</div>

							<div class="col-sm-4">
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
							<div class="col-sm-4">
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