package br.edu.infnet.appAT.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import br.edu.infnet.appAT.model.negocio.Atividade;
import br.edu.infnet.appAT.model.negocio.Usuario;
import br.edu.infnet.appAT.model.repository.IAtividadeRepository;

@Service
public class AtividadeService 
{
	
	@Autowired
	private IAtividadeRepository atividadeRepository;
	
	public void incluir(Atividade atividade)
	{
		atividadeRepository.save(atividade);
	}

	public List<Atividade> obterLista(Usuario usuario) 
	{
		return (List<Atividade>) atividadeRepository.obterLista(usuario.getId(), Sort.by(Sort.Direction.ASC, "nome"));
	}

	public void excluir(Integer id) 
	{
		atividadeRepository.deleteById(id);
	}
}
