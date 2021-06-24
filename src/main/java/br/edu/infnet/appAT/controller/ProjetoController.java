package br.edu.infnet.appAT.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.appAT.model.negocio.Projeto;
import br.edu.infnet.appAT.model.negocio.Usuario;
import br.edu.infnet.appAT.model.service.ProjetoService;

@Controller
public class ProjetoController 
{

	@Autowired
	private ProjetoService projetoService;
	
	@GetMapping(value = "/projeto")
	public String telaCadastro()
	{
		return "projeto/cadastro";
	}
	
	@PostMapping(value = "/projeto/incluir")
	public String incluir(Projeto projeto, @SessionAttribute("user") Usuario usuario)
	{
		projeto.setUsuario(usuario);
		projetoService.incluir(projeto);
		return "redirect:/projeto/lista";
	}
	
	@GetMapping(value = "/projeto/{id}/excluir")
	public String excluir(Model model, @PathVariable Integer id, @SessionAttribute("user") Usuario usuario) 
	{
		try 
		{
			projetoService.excluir(id);
		} 
		catch (Exception e) 
		{
			model.addAttribute("mensagem", "Impossível excluir esse projeto. Exclua a atividade relacionada primeiro");
			return obterLista(model, usuario);
		}
		return "redirect:/projeto/lista";
	}
	
	@GetMapping(value = "/projeto/lista")
	public String obterLista(Model model, @SessionAttribute("user") Usuario usuario)
	{
		model.addAttribute("projetos", projetoService.obterLista(usuario));
		return "projeto/lista";
	}
}