package br.edu.infnet.appAT.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.appAT.model.negocio.Analise;
import br.edu.infnet.appAT.model.negocio.Usuario;
import br.edu.infnet.appAT.model.service.AnaliseService;
import br.edu.infnet.appAT.model.service.AtividadeService;
import br.edu.infnet.appAT.model.service.ProjetoService;

@Controller
public class AnaliseController 
{
	@Autowired
	private AnaliseService analiseService;
	@Autowired
	private AtividadeService atividadeService;
	
	@GetMapping(value = "/analise")
	public String telaCadastro(Model model, @SessionAttribute("user") Usuario usuario)
	{
		model.addAttribute("atividades", atividadeService.obterLista(usuario));
		return "/analise/cadastro";
	}
	
	@PostMapping(value = "/analise/incluir")
	public String incluir(Analise analise, @SessionAttribute("user") Usuario usuario)
	{
		analise.setUsuario(usuario);
		analiseService.incluir(analise);
		return "redirect:/analise/lista";
	}
	
	@GetMapping(value = "/analise/{id}/excluir")
	public String excluir(@PathVariable Integer id) 
	{
		analiseService.excluir(id);
		return "redirect:/analise/lista";
	}
	
	@GetMapping(value = "/analise/lista")
	public String obterLista(Model model, @SessionAttribute("user") Usuario usuario)
	{
		model.addAttribute("analises", analiseService.obterLista(usuario));
		return "analise/lista";
	}
}