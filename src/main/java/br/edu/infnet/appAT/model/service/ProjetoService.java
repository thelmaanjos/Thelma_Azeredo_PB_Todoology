package br.edu.infnet.appAT.model.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import br.edu.infnet.appAT.model.negocio.Projeto;
import br.edu.infnet.appAT.model.negocio.Usuario;
import br.edu.infnet.appAT.model.repository.IProjetoRepository;

@Service
public class ProjetoService 
{	
	@Autowired
	private IProjetoRepository projetoRepository;
	
	public void incluir(Projeto projeto)
	{
		projetoRepository.save(projeto);
	}

	public List<Projeto> obterLista(Usuario usuario) 
	{
		return (List<Projeto>) projetoRepository.obterLista(usuario.getId(), Sort.by(Sort.Direction.ASC, "nomeProj"));
	}

	public void excluir(Integer id) 
	{
		projetoRepository.deleteById(id);
	}
}
