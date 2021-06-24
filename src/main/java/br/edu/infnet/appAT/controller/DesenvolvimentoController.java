package br.edu.infnet.appAT.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.appAT.model.negocio.Desenvolvimento;
import br.edu.infnet.appAT.model.negocio.Usuario;
import br.edu.infnet.appAT.model.service.DesenvolvimentoService;

@Controller
public class DesenvolvimentoController 
{
	@Autowired
	private DesenvolvimentoService desenvolvimentoService;
	
	@GetMapping(value = "/desenvolvimento")
	public String telaCadastro()
	{
		return "/desenvolvimento/cadastro";
	}
	
	@PostMapping(value = "/desenvolvimento/incluir")
	public String incluir(Desenvolvimento desenvolvimento, @SessionAttribute("user") Usuario usuario)
	{
		desenvolvimento.setUsuario(usuario);
		desenvolvimentoService.incluir(desenvolvimento);
		return "redirect:/desenvolvimento/lista";
	}
	
	@GetMapping(value = "/desenvolvimento/{id}/excluir")
	public String excluir(@PathVariable Integer id) 
	{
		desenvolvimentoService.excluir(id);
		return "redirect:/desenvolvimento/lista";
	}
	
	@GetMapping(value = "/desenvolvimento/lista")
	public String obterLista(Model model, @SessionAttribute("user") Usuario usuario)
	{
		model.addAttribute("devs", desenvolvimentoService.obterLista(usuario));
		return "desenvolvimento/lista";
	}
}