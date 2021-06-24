package br.edu.infnet.appAT.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.appAT.model.negocio.Usuario;
import br.edu.infnet.appAT.model.service.TarefaService;

@Controller
public class TarefaController 
{
	@Autowired
	private TarefaService tarefaService;
	
	@GetMapping(value = "/tarefa")
	public String telaCadastro()
	{
		return "redirect:/tarefa/lista";
	}
	
	@GetMapping(value = "/tarefa/{id}/excluir")
	public String excluir(@PathVariable Integer id) 
	{
		tarefaService.excluir(id);
		return "redirect:/tarefa/lista";
	}
	
	@GetMapping(value = "/tarefa/lista")
	public String obterLista(Model model, @SessionAttribute("user") Usuario usuario)
	{
		model.addAttribute("tarefas", tarefaService.obterLista(usuario));
		return "tarefa/cadastro";
	}
}