package br.edu.infnet.appAT.model.repository;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import br.edu.infnet.appAT.model.negocio.Usuario;

@Repository
public interface IUsuarioRepository extends CrudRepository<Usuario, Integer> 
{
	@Query("from Usuario u where u.email =:email and u.senha =:senha")
	public Usuario autenticacao(String email, String senha);
	public List<Usuario> obterLista(Integer userid, Sort sort);
}
