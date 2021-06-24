package br.edu.infnet.appAT.controller;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import br.edu.infnet.appAT.model.negocio.Usuario;
import br.edu.infnet.appAT.model.service.UsuarioService;

@SessionAttributes("user")
@Controller
public class UsuarioController {
	@Autowired
	private UsuarioService usuarioService;

	@RequestMapping("/cadastro")
	public String cadastro(Model model) 
	{
		Usuario usuario = new Usuario();
		model.addAttribute("usuario", usuario);
		return "cadastro";
	}

	@RequestMapping("/cadastrar")
	public String cadastrar(Usuario usuario) throws SQLException 
	{
		usuarioService.incluir(usuario);
		return "login";
	}

	@GetMapping(value = "/login")
	public String logar() 
	{
		return "login";
	}

	@GetMapping(value = "/usuario")
	public String telaCadastro() 
	{
		return "usuario/cadastro";
	}

	@PostMapping(value = "/usuario/incluir")
	public String incluir(Usuario usuario) 
	{
		usuarioService.incluir(usuario);
		return "redirect:/usuario/lista";
	}

	@GetMapping(value = "/usuario/{id}/excluir")
	public String excluir(@PathVariable Integer id) 
	{
		usuarioService.excluir(id);
		return "redirect:/usuario/lista";
	}

	@GetMapping(value = "/usuario/lista")
	public String obterLista(Model model, @SessionAttribute("user") Usuario usuario) 
	{
		model.addAttribute("usuariosCadastrados", usuarioService.obterLista(usuario));
		return "usuario/lista";
	}

	@PostMapping(value = "/usuario/login")
	public String validarLogin(Model model, @RequestParam String email, String senha) 
	{
		Usuario usuario = usuarioService.autenticacao(email, senha);
		if (usuario != null) 
		{
			model.addAttribute("user", usuario);
			return "redirect:/home";
		}
		model.addAttribute("mensagem", "Login ou senha incorretos.");
		return logar();
	}
}