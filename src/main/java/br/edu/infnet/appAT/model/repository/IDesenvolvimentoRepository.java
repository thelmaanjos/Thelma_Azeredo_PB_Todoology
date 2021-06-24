package br.edu.infnet.appAT.model.repository;

import java.util.List;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import br.edu.infnet.appAT.model.negocio.Desenvolvimento;

@Repository
public interface IDesenvolvimentoRepository extends CrudRepository<Desenvolvimento, Integer> 
{
	@Query("from Desenvolvimento d where d.usuario.id =:userid")
	public List<Desenvolvimento> obterLista(Integer userid, Sort sort);
}
