package br.edu.infnet.appAT.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import br.edu.infnet.appAT.model.negocio.Desenvolvimento;
import br.edu.infnet.appAT.model.negocio.Usuario;
import br.edu.infnet.appAT.model.repository.IDesenvolvimentoRepository;

@Service
public class DesenvolvimentoService 
{
	@Autowired
	private IDesenvolvimentoRepository desenvolvimentoRepository;
	
	public void incluir(Desenvolvimento desenvolvimento)
	{
		desenvolvimentoRepository.save(desenvolvimento);
	}

	public List<Desenvolvimento> obterLista(Usuario usuario) 
	{
		return (List<Desenvolvimento>) desenvolvimentoRepository.obterLista(usuario.getId(),Sort.by(Sort.Direction.ASC, "titulo"));
	}

	public void excluir(Integer id) 
	{
		desenvolvimentoRepository.deleteById(id);
	}
}
