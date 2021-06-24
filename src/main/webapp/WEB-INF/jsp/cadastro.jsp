<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="pt-BR" class="h-100">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.83.1">
<title>Todoology</title>
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
<link href="css/cover.css" rel="stylesheet">
</head>
<body class="d-flex h-100 text-center text-white bg-dark">
	<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
		<header class="mb-auto py-3">
			<div>
				<h3 class="float-md-start mb-0">Todoology</h3>
				<nav class="nav nav-masthead justify-content-center float-md-end">
					<a class="nav-link active" aria-current="page" href="#">Cadastre-se</a>
					<a class="nav-link" href="/login">Login</a> <a class="nav-link"
						href="#">Sobre</a>
				</nav>
			</div>
		</header>
		<div class="row mb-2 text-center">
			<div class="col-md-6">
				<main>
					<h1>to do anywhere you go</h1>
					<p class="lead">O Todoology é um ambiente especial para times
						de desenvolvimento criarem projetos e listas de tarefas – planejar
						o agora, o futuro e mapear o seu progresso – de forma simples,
						prática e, melhor: gratuita.</p>
				</main>
			</div>
			<div class="col-md-6">
				<form class="form-signin" action="cadastrar" method="post">
					<h1 class="h3 mb-3 fw-normal">cadastre-se</h1>

					<div class="form-floating my-3">
						<input type="text" class="form-control" id="nome" name="nome"
							required> <label>nome</label>
					</div>

					<div class="form-floating my-3">
						<input type="email" class="form-control" id="email" name="email"
							required> <label>e-mail</label>
					</div>

					<div class="form-floating">
						<input type="password" class="form-control" id="senha"
							name="senha" required> <label>senha</label>
					</div>
					<div class="checkbox mb-3">
						<label> <input type="checkbox" value="remember-me">
							lembrar-me
						</label>
					</div>
					<button class="w-100 btn btn-lg btn-primary" type="submit"
						id="submit" value="Cadastrar">cadastrar</button>
				</form>
			</div>
		</div>
		<footer class="mt-auto text-white-50">
			<p>Todoology. © Copyright 2021. Todos os direitos reservados.</p>
		</footer>
	</div>
</body>
</html>