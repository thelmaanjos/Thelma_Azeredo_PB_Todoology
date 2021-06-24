package br.edu.infnet.appAT.model.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import br.edu.infnet.appAT.model.negocio.Analise;
import br.edu.infnet.appAT.model.negocio.Usuario;
import br.edu.infnet.appAT.model.repository.IAnaliseRepository;

@Service
public class AnaliseService 
{
	@Autowired
	private IAnaliseRepository analiseRepository;
	
	public void incluir(Analise analise)
	{
		analiseRepository.save(analise);
	}

	public List<Analise> obterLista(Usuario usuario) 
	{
		return (List<Analise>) analiseRepository.obterLista(usuario.getId(),Sort.by(Sort.Direction.ASC, "titulo"));
	}

	public void excluir(Integer id) 
	{
		analiseRepository.deleteById(id);
	}
}
