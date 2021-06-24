package br.edu.infnet.appAT.model.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import br.edu.infnet.appAT.model.negocio.Tarefa;
import br.edu.infnet.appAT.model.negocio.Usuario;
import br.edu.infnet.appAT.model.repository.ITarefaRepository;

@Service
public class TarefaService 
{
	@Autowired
	private ITarefaRepository tarefaRepository;

	public List<Tarefa> obterLista(Usuario usuario) 
	{
		return (List<Tarefa>) tarefaRepository.obterLista(usuario.getId(), Sort.by(Sort.Direction.ASC, "titulo"));
	}

	public void excluir(Integer id) 
	{
		tarefaRepository.deleteById(id);
	}
}
