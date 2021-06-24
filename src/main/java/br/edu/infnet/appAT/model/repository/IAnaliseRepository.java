package br.edu.infnet.appAT.model.repository;

import java.util.List;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import br.edu.infnet.appAT.model.negocio.Analise;

@Repository
public interface IAnaliseRepository extends CrudRepository<Analise, Integer> 
{
	@Query("from Analise a where a.usuario.id =:userid")
	public List<Analise> obterLista(Integer userid, Sort sort);
}
