package br.edu.infnet.appAT.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import br.edu.infnet.appAT.model.negocio.Implantacao;

@Repository
public interface IImplantacaoRepository extends CrudRepository<Implantacao, Integer> 
{
	@Query("from Implantacao i where i.usuario.id =:userid")
	public List<Implantacao> obterLista(Integer userid, Sort sort);
}
