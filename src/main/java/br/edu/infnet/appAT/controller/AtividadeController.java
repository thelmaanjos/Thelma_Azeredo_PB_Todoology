package br.edu.infnet.appAT.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;
import br.edu.infnet.appAT.model.negocio.Atividade;
import br.edu.infnet.appAT.model.negocio.Usuario;
import br.edu.infnet.appAT.model.service.AtividadeService;
import br.edu.infnet.appAT.model.service.ProjetoService;

@Controller
public class AtividadeController 
{
	@Autowired
	private AtividadeService atividadeService;
	@Autowired
	private ProjetoService projetoService;
	
	@GetMapping(value = "/atividade")
	public String telaCadastro(Model model, @SessionAttribute("user") Usuario usuario)
	{
		model.addAttribute("projetos", projetoService.obterLista(usuario));
		return "/atividade/cadastro";
	}
	
	@PostMapping(value = "/atividade/incluir")
	public String incluir(Atividade atividade, @SessionAttribute("user") Usuario usuario)
	{
		atividade.setUsuario(usuario);
		atividadeService.incluir(atividade);
		return "redirect:/atividade/lista";
	}
	
	@GetMapping(value = "/atividade/{id}/excluir")
	public String excluir(@PathVariable Integer id) 
	{
		atividadeService.excluir(id);
		return "redirect:/atividade/lista";
	}
	
	@GetMapping(value = "/atividade/lista")
	public String obterLista(Model model, @SessionAttribute("user") Usuario usuario)
	{
		model.addAttribute("atividades", atividadeService.obterLista(usuario));
		return "atividade/lista";
	}
}