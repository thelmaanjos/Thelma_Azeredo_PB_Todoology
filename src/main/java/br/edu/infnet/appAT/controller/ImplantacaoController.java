package br.edu.infnet.appAT.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.appAT.model.negocio.Implantacao;
import br.edu.infnet.appAT.model.negocio.Usuario;
import br.edu.infnet.appAT.model.service.ImplantacaoService;

@Controller
public class ImplantacaoController 
{
	@Autowired
	private ImplantacaoService implantacaoService;
	
	@GetMapping(value = "/implantacao")
	public String telaCadastro()
	{
		return "/implantacao/cadastro";
	}
	
	@PostMapping(value = "/implantacao/incluir")
	public String incluir(Implantacao implantacao, @SessionAttribute("user") Usuario usuario)
	{
		implantacao.setUsuario(usuario);
		implantacaoService.incluir(implantacao);
		return "redirect:/implantacao/lista";
	}
	
	@GetMapping(value = "/implantacao/{id}/excluir")
	public String excluir(@PathVariable Integer id) 
	{
		implantacaoService.excluir(id);
		return "redirect:/implantacao/lista";
	}
	
	@GetMapping(value = "/implantacao/lista")
	public String obterLista(Model model, @SessionAttribute("user") Usuario usuario)
	{
		model.addAttribute("implantacoes", implantacaoService.obterLista(usuario));
		return "implantacao/lista";
	}
}