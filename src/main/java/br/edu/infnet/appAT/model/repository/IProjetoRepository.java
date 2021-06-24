package br.edu.infnet.appAT.model.repository;

import java.util.List;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import br.edu.infnet.appAT.model.negocio.Projeto;

@Repository
public interface IProjetoRepository extends CrudRepository<Projeto, Integer> 
{
	@Query("from Projeto p where p.usuario.id =:userid")
	public List<Projeto> obterLista(Integer userid, Sort sort);

}