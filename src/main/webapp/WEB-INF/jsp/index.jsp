<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.83.1">
<title>Home</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/sidebars/">

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
<link href="css/sidebar.css" rel="stylesheet">
</head>
<body class="bg-light">
	<div class="side">
		<c:import url="/WEB-INF/jsp/sidemenu.jsp" />

		<div class="container px-4 py-5" id="hanging-icons">
			<h2 class="pb-2 border-bottom">Bem vindo(a), ${user.nome}</h2>
			<a href="/logout" class="w-80 btn btn-dark btn-md my-5" type="submit">Sair</a>
			<div class="row g-4 py-5 row-cols-1 row-cols-lg-3">
				<div class="col d-flex align-items-start">
					<div class="icon-square bg-light text-dark flex-shrink-0 me-3">
						<svg class="bi" width="1em" height="1em">
							<use xlink:href="#toggles2" /></svg>
					</div>
					<div>
						<h2>Cadastrar + projetos</h2>
						<p>Paragraph of text beneath the heading to explain the
							heading. We'll add onto it with another sentence and probably
							just keep going until we run out of words.</p>
						<p>${projetoQtde} projetos</p>
						<a href="/projeto/lista" class="btn btn-primary"> Cadastrar
							projeto </a>
					</div>
				</div>
				<div class="pb-5 col d-flex align-items-start">
					<div class="icon-square bg-light text-dark flex-shrink-0 me-3">
						<svg class="bi" width="1em" height="1em">
							<use xlink:href="#toggles2" /></svg>
					</div>
					<div>
						<h2>Cadastrar + atividades</h2>
						<p>Paragraph of text beneath the heading to explain the
							heading. We'll add onto it with another sentence and probably
							just keep going until we run out of words.</p>
						<p>${atividadeQtde} atividades</p>
						<a href="/atividade/lista" class="btn btn-primary"> Cadastrar
							atividade </a>
					</div>
				</div>
				<div class="pb-5 col d-flex align-items-start">
					<div class="icon-square bg-light text-dark flex-shrink-0 me-3">
						<svg class="bi" width="1em" height="1em">
							<use xlink:href="#toggles2" /></svg>
					</div>
					<div>
						<h2>Lista geral de tarefas</h2>
						<p>Paragraph of text beneath the heading to explain the
							heading. We'll add onto it with another sentence and probably
							just keep going until we run out of words.</p>
						<p>${tarefaQtde} tarefas</p>
						<a href="/tarefa/lista" class="btn btn-primary"> Ver tarefas </a>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div class="icon-square bg-light text-dark flex-shrink-0 me-3">
						<svg class="bi" width="1em" height="1em">
							<use xlink:href="#toggles2" /></svg>
					</div>
					<div>
						<h2>Tarefas em desenvolvimento</h2>
						<p>Paragraph of text beneath the heading to explain the
							heading. We'll add onto it with another sentence and probably
							just keep going until we run out of words.</p>
						<p>${devQtde} tarefas</p>
						<a href="/desenvolvimento/lista" class="btn btn-primary">
							Criar tarefa </a>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div class="icon-square bg-light text-dark flex-shrink-0 me-3">
						<svg class="bi" width="1em" height="1em">
							<use xlink:href="#toggles2" /></svg>
					</div>
					<div>
						<h2>Tarefas em análise</h2>
						<p>Paragraph of text beneath the heading to explain the
							heading. We'll add onto it with another sentence and probably
							just keep going until we run out of words.</p>
						<p>${analiseQtde} tarefas</p>
						<a href="/analise/lista" class="btn btn-primary"> Criar tarefa
						</a>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div class="icon-square bg-light text-dark flex-shrink-0 me-3">
						<svg class="bi" width="1em" height="1em">
							<use xlink:href="#toggles2" /></svg>
					</div>
					<div>
						<h2>Tarefas em implantação</h2>
						<p>Paragraph of text beneath the heading to explain the
							heading. We'll add onto it with another sentence and probably
							just keep going until we run out of words.</p>
						<p>${implantacaoQtde} tarefas</p>
						<a href="/implantacao/lista" class="btn btn-primary"> Criar
							tarefa </a>
					</div>
				</div>
				<div class="col d-flex align-items-start">
					<div class="icon-square bg-light text-dark flex-shrink-0 me-3">
						<svg class="bi" width="1em" height="1em">
							<use xlink:href="#toggles2" /></svg>
					</div>
					<div>
						<h2>Usuários</h2>
						<p>Paragraph of text beneath the heading to explain the
							heading. We'll add onto it with another sentence and probably
							just keep going until we run out of words.</p>
						<p>${usuarioQtde} usuarios</p>
						<a href="/usuario" class="btn btn-primary"> Ver usuários</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>