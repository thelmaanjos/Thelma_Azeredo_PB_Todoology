package br.edu.infnet.appAT.model.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import br.edu.infnet.appAT.model.negocio.Implantacao;
import br.edu.infnet.appAT.model.negocio.Usuario;
import br.edu.infnet.appAT.model.repository.IImplantacaoRepository;

@Service
public class ImplantacaoService 
{
	@Autowired
	private IImplantacaoRepository implantacaoRepository;
	
	public void incluir(Implantacao implantacao)
	{
		implantacaoRepository.save(implantacao);
	}

	public List<Implantacao> obterLista(Usuario usuario) 
	{
		return (List<Implantacao>) implantacaoRepository.obterLista(usuario.getId(),Sort.by(Sort.Direction.ASC, "titulo"));
	}

	public void excluir(Integer id) 
	{
		implantacaoRepository.deleteById(id);
	}
}
