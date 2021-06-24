package br.edu.infnet.appAT.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttribute;

import br.edu.infnet.appAT.model.negocio.Usuario;
import br.edu.infnet.appAT.model.service.AnaliseService;
import br.edu.infnet.appAT.model.service.AtividadeService;
import br.edu.infnet.appAT.model.service.DesenvolvimentoService;
import br.edu.infnet.appAT.model.service.ImplantacaoService;
import br.edu.infnet.appAT.model.service.ProjetoService;
import br.edu.infnet.appAT.model.service.TarefaService;
import br.edu.infnet.appAT.model.service.UsuarioService;

@Controller
public class AppController 
{
	@Autowired
	private TarefaService tarefaService;
	@Autowired
	private ProjetoService projetoService;
	@Autowired
	private AtividadeService atividadeService;
	@Autowired
	private DesenvolvimentoService desenvolvimentoService;
	@Autowired
	private AnaliseService analiseService;
	@Autowired
	private ImplantacaoService implantacaoService;
	@Autowired
	private UsuarioService usuariosCadastradosService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String telaCadastro()
	{
		return "cadastro";
	}
	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String telaIndex(Model model, @SessionAttribute("user") Usuario usuario)
	{
		model.addAttribute("tarefaQtde", tarefaService.obterLista(usuario).size());
		model.addAttribute("projetoQtde", projetoService.obterLista(usuario).size());
		model.addAttribute("atividadeQtde", atividadeService.obterLista(usuario).size());
		model.addAttribute("devQtde", desenvolvimentoService.obterLista(usuario).size());
		model.addAttribute("analiseQtde", analiseService.obterLista(usuario).size());
		model.addAttribute("implantacaoQtde", implantacaoService.obterLista(usuario).size());
		model.addAttribute("usuarioQtde", usuariosCadastradosService.obterLista(usuario).size());

		return "index";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String telaLogout()
	{
		return "redirect:/";
	}
	
}
