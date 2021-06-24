package br.edu.infnet.appAT.model.negocio;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "TTarefa")
@Inheritance(strategy = InheritanceType.JOINED)
public class Tarefa
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String titulo;
	private String autor;
	private Date inicio;
	private Date termino;
	//private String descricao;
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
	
	public String getTitulo() 
	{
		return titulo;
	}
	
	public void setTitulo(String titulo) 
	{
		this.titulo = titulo;
	}
	
	public Date getInicio() 
	{
		return inicio;
	}
	
	public void setInicio(Date inicio) 
	{
		this.inicio = inicio;
	}
	
	public Date getTermino() 
	{
		return termino;
	}
	
	public void setTermino(Date termino) 
	{
		this.termino = termino;
	}

	/*public String getDescricao() 
	{
		return descricao;
	}
	
	public void setDescricao(String descricao) 
	{
		this.descricao = descricao;
	}*/

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
		return "Tarefa [id=" + id + ", titulo=" + titulo + ", inicioTarefa=" + inicio + ", terminoTarefa="
				+ termino + ", autor=" + autor +"]";
	}
}