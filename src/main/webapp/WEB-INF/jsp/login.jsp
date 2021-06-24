<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en" class="h-100">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.83.1">
<title>Login</title>
<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/cover/">
<!-- Bootstrap core CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous">
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
<link href="css/login.css" rel="stylesheet">
</head>
<body class="d-flex h-100 text-center text-white bg-dark">
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		<header class="mb-auto py-3">
			<div>
				<h3 class="float-md-start mb-0">Todoology</h3>
				<nav class="nav nav-masthead justify-content-center float-md-end">
					<a class="nav-link" href="/cadastro">Cadastre-se</a> <a
						class="nav-link active" aria-current="page" href="/login">Login</a>
					<a class="nav-link" href="#">Sobre</a>
				</nav>
			</div>
		</header>
		<main class="px-5 m-auto form-signin">
			<h1>login</h1>
			<form action="/usuario/login" method="post">
				<div class="form-group">
					<label for="email">E-mail:</label> <input type="email"
						class="form-control mb-3" id="email"
						placeholder="jane.doe@exemplo.com" name="email">
				</div>
				<div class="form-group">
					<label for="senha">Senha:</label> <input type="password"
						class="form-control mb-3" id="senha" placeholder="••••••"
						name="senha">
				</div>
				<button type="submit" class="btn btn-primary" value="entrar">entrar</button>
			</form>
			<c:if test="${not empty mensagem}">
				<div class="alert alert-danger" role="alert">${mensagem}</div>
			</c:if>
		</main>
		<footer class="mt-auto text-white-50">
			<p>Todoology. © Copyright 2021. Todos os direitos reservados.</p>
		</footer>
	</div>
</body>
</html>