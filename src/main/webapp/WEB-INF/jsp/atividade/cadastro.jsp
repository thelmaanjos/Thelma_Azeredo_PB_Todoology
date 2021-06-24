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
<title>Atividade</title>
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
			<h1 class="pb-2 text-center">Cadastrar Atividade</h1>
			<div class="row g-4 py-5 row-cols-1">
				<div class="col d-flex align-items-start">
					<form class="needs-validation" novalidate
						action="/atividade/incluir" method="post">
						<div class="row g-3">
							<div class="col-sm-4">
								<label class="form-label fw-bold">Projeto:</label> <select
									class="form-select" name="projeto.id" required>
									<option selected>Escolha um projeto relacionado</option>
									<c:forEach var="p" items="${projetos}">
										<option value="${p.id}">${p.nomeProj}</option>
									</c:forEach>
								</select>
								<div class="invalid-feedback">Selecione um projeto</div>
							</div>
							<div class="col-sm-4">
								<label for="firstName" class="form-label fw-bold">Nome
									da atividade</label> <input type="text" class="form-control"
									name="nome" value="AT Projeto de Bloco" required>
								<div class="invalid-feedback">Insira um nome para a sua atividade</div>
							</div>
							<div class="col-sm-4">
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
								<label for="text" class="form-label fw-bold">Descrição da atividade <span class="text-muted">(Opcional)</span>
								</label><textarea class="form-control" id="message" placeholder="Descreva a sua atividade :)" name="descAtv" rows="3"></textarea>
							</div>
							<div class="col-sm-4">
								<label for="text" class="mb-3 fw-bold">Essa atividade é
									urgente?</label>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="isUrgent"
										value="true" checked> <label class="form-check-label">Urgente!</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="isUrgent"
										value="false"> <label class="form-check-label">Não
										é urgente</label>
								</div>
							</div>
							<div class="col-sm-4">
								<label class="form-label fw-bold">Escolha o nível de
									prioridade</label> <select class="form-select" name="prioridade"
									required>
									<option selected>1</option>
									<option>2</option>
									<option>3</option>
								</select>
								<div class="invalid-feedback">Selecione um nível de
									prioridade</div>
							</div>
							<hr class="my-4">
						</div>
						<div class="d-flex justify-content-center">
							<button class="w-80 btn btn-dark btn-md my-5" type="submit">Criar
								atividade</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>