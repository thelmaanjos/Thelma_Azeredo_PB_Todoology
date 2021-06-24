package br.edu.infnet.appAT.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import br.edu.infnet.appAT.model.negocio.Tarefa;

@Repository
public interface ITarefaRepository extends CrudRepository<Tarefa, Integer> 
{
	@Query("from Tarefa t where t.usuario.id =:userid")
	public List<Tarefa> obterLista(Integer userid, Sort sort);
}