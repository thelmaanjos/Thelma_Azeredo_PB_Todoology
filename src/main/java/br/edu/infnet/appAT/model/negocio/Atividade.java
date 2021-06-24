package br.edu.infnet.appAT.model.negocio;

import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name = "TAtividade")
public class Atividade 
{
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String nome;
	@OneToOne(cascade = CascadeType.DETACH)
	@JoinColumn(name = "idProjeto")
	private Projeto projeto;
	@Transient
	private List<Tarefa> tarefa;
	private String autor;
	private String descAtv;
	private Integer prioridade;
	private Boolean isUrgent;
	@ManyToOne
	@JoinColumn(name = "idUsuario")
	private Usuario usuario;
	
	public Projeto getProjeto() 
	{
		return projeto;
	}

	public void setProjeto(Projeto projeto) 
	{
		this.projeto = projeto;
	}

	public Integer getId() 
	{
		return id;
	}

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public List<Tarefa> getTarefa() 
	{
		return tarefa;
	}

	public void setTarefa(List<Tarefa> tarefa) 
	{
		this.tarefa = tarefa;
	}

	public String getAutor() 
	{
		return autor;
	}

	public void setAutor(String autor) 
	{
		this.autor = autor;
	}

	public String getDescAtv() 
	{
		return descAtv;
	}

	public void setDescAtv(String descAtv) 
	{
		this.descAtv = descAtv;
	}

	public Integer getPrioridade() 
	{
		return prioridade;
	}

	public void setPrioridade(Integer prioridade) 
	{
		this.prioridade = prioridade;
	}

	public Boolean getIsUrgent() 
	{
		return isUrgent;
	}

	public void setIsUrgent(Boolean isUrgent) 
	{
		this.isUrgent = isUrgent;
	}

	public String getNome() 
	{
		return nome;
	}

	public void setNome(String nome) 
	{
		this.nome = nome;
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
		return "Atividade [id=" + id + ", projeto=" + projeto + ", tarefa=" + tarefa + ", autor=" + autor + ", descAtv="
				+ descAtv + ", prioridade=" + prioridade + ", isUrgent=" + isUrgent + "]";
	}
}