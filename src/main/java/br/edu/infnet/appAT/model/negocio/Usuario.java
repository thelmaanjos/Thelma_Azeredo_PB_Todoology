package br.edu.infnet.appAT.model.negocio;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "TUsuario")
public class Usuario 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String nome;
	private String email;
	private String senha;
	@OneToMany
	@JoinColumn(name = "idUsuario")
	private List<Projeto> projetos;
	@OneToMany
	@JoinColumn(name = "idUsuario")
	private List<Atividade> atividades;
	
	public Usuario()
	{
		
	}
	
	public Usuario(String nome, String email) 
	{
		this.nome = nome;
		this.email = email;
	}
	
	@Override
	public String toString() 
	{
		return String.format("%d - %s - %s", 
					this.getId(),
					this.getNome(),
					this.getEmail()
				);
	}

	public Integer getId() 
	{
		return id;
	}
	public void setId(Integer id) 
	{
		this.id = id;
	}
	public String getNome() 
	{
		return nome;
	}
	public void setNome(String nome) 
	{
		this.nome = nome;
	}
	public String getEmail() 
	{
		return email;
	}
	public void setEmail(String email) 
	{
		this.email = email;
	}

	public String getSenha() 
	{
		return senha;
	}

	public void setSenha(String senha) 
	{
		this.senha = senha;
	}

	public List<Projeto> getProjetos() 
	{
		return projetos;
	}

	public void setProjetos(List<Projeto> projetos) 
	{
		this.projetos = projetos;
	}

	public List<Atividade> getAtividades() 
	{
		return atividades;
	}

	public void setAtividades(List<Atividade> atividades) 
	{
		this.atividades = atividades;
	}

}
