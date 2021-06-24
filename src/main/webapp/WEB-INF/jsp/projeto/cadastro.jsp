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
			<h1 class="pb-2 text-center">Crie um projeto</h1>
			<div class="row g-4 py-5 row-cols-1">
				<div class="col d-flex align-items-start">
					<form class="needs-validation" novalidate action="/projeto/incluir"
						method="post">
						<div class="row g-3">
							<div class="col-sm-6">
								<label for="firstName" class="form-label">Nome do
									projeto</label> <input type="text" class="form-control" name="nomeProj"
									value="AT Projeto de Bloco" required>
								<div class="invalid-feedback">Insira um nome para o seu
									projeto</div>
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
							<div class="col-sm-12">
								<label for="text" class="form-label">Descrição do
									projeto <span class="text-muted">(Opcional)</span>
								</label>
								<textarea class="form-control" id="message"
									placeholder="Descreva um pouco o seu projeto :)"
									name="descProj" rows="3">
	              			</textarea>
							</div>
							<div class="col-sm-6">
								<label for="text" class="form-label">Data de criação</label>
								<!-- Datepicker as text field -->
								<div class="input-group date " data-date-format="mm/ddd/yyyy">
									<input type="text" name="dataCriacao" class="form-control"
										placeholder="dd/mm/yyyy">
									<div class="input-group-addon">
										<span class="glyphicon glyphicon-th"></span>
									</div>
								</div>
							</div>
							<div class="col-sm-6">
								<label for="text" class="mb-3">Projeto colaborativo?</label>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="hasCollab"
										value="true" checked> <label class="form-check-label">Sim</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="hasCollab"
										value="false"> <label class="form-check-label">Não</label>
								</div>
							</div>
							<hr class="my-4">
						</div>
						<div class="d-flex justify-content-center">
							<button class="w-80 btn btn-dark btn-md my-5" type="submit">Criar
								projeto</button>
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