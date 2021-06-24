package br.edu.infnet.appAT.model.negocio;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "TDesenvolvimento")
@PrimaryKeyJoinColumn(name = "idTarefa")
public class Desenvolvimento extends Tarefa 
{
	private String descComputacional;
	private String lingProgram;
	private Boolean hasFramework;
	private Boolean hassbgd;
	private Double qtdTestesConcluidos;
	private Integer qtdErros;
	@ManyToOne
	@JoinColumn(name = "idUsuario")
	private Usuario usuario;

	public String getLingProgram() 
	{
		return lingProgram;
	}

	public void setLingProgram(String lingProgram) 
	{
		this.lingProgram = lingProgram;
	}

	public Boolean getHasFramework() 
	{
		return hasFramework;
	}

	public void setHasFramework(Boolean hasFramework) 
	{
		this.hasFramework = hasFramework;
	}

	public Double getQtdTestesConcluidos() 
	{
		return qtdTestesConcluidos;
	}

	public void setQtdTestesConcluidos(Double qtdTestesConcluidos) 
	{
		this.qtdTestesConcluidos = qtdTestesConcluidos;
	}

	public Integer getQtdErros() 
	{
		return qtdErros;
	}

	public void setQtdErros(Integer qtdErros) 
	{
		this.qtdErros = qtdErros;
	}

	public Boolean getHassbgd() 
	{
		return hassbgd;
	}

	public void setHassbgd(Boolean hassbgd) 
	{
		this.hassbgd = hassbgd;
	}

	public String getDescComputacional() 
	{
		return descComputacional;
	}

	public void setDescComputacional(String descComputacional) 
	{
		this.descComputacional = descComputacional;
	}
	
	

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	@Override
	public String toString() 
	{
		return super.toString() + "Desenvolvimento [lingProgram=" + lingProgram + ", hasFramework=" + hasFramework
				+ ", hassbgd=" + hassbgd + ", qtdTestesConcluidos=" + qtdTestesConcluidos + ", qtdErros=" + qtdErros
				+ "]";
	}
}