package br.edu.infnet.appAT.model.negocio;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TProjeto")
public class Projeto 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String autor;
	private String nomeProj;
	private String descProj;
	private Date dataCriacao;
	private Boolean hasCollab;
	@ManyToOne
	@JoinColumn(name = "idUsuario")
	private Usuario usuario;
	
	public Integer getId() 
	{
		return id;
	}
	
	public void setId(Integer id) 
	{
		this.id = id;
	}

	public String getNomeProj() 
	{
		return nomeProj;
	}
	
	public void setNomeProj(String nomeProj) 
	{
		this.nomeProj = nomeProj;
	}
	
	public String getDescProj() 
	{
		return descProj;
	}
	
	public void setDescProj(String descProj) 
	{
		this.descProj = descProj;
	}
	
	public Date getDataCriacao() 
	{
		return dataCriacao;
	}
	
	public void setDataCriacao(Date dataCriacao) 
	{
		this.dataCriacao = dataCriacao;
	}
	
	public Boolean getHasCollab() 
	{
		return hasCollab;
	}
	
	public void setHasCollab(Boolean hasTasks) 
	{
		this.hasCollab = hasTasks;
	}

	public String getAutor() 
	{
		return autor;
	}

	public void setAutor(String autor) 
	{
		this.autor = autor;
	}

	public Usuario getUsuario() 
	{
		return usuario;
	}

	public void setUsuario(Usuario usuario) 
	{
		this.usuario = usuario;
	}

	@Override
	public String toString() 
	{
		return "Projeto [id=" + id + ", nomeProj=" + nomeProj + ", descProj=" + descProj
				+ ", dataCriacao=" + dataCriacao + ", hasTasks=" + hasCollab + "]";
	}
}