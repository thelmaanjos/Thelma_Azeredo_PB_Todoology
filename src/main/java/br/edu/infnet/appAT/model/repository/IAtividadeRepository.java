package br.edu.infnet.appAT.model.repository;

import java.util.List;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import br.edu.infnet.appAT.model.negocio.Atividade;

@Repository
public interface IAtividadeRepository extends CrudRepository<Atividade, Integer> 
{
	@Query("from Atividade a where a.usuario.id =:userid")
	public List<Atividade> obterLista(Integer userid, Sort sort);
}
