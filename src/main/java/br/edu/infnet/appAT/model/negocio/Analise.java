package br.edu.infnet.appAT.model.negocio;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "TAnalise")
@PrimaryKeyJoinColumn(name = "idTarefa")
public class Analise extends Tarefa
{
	private Integer qtdReqFunc;
	private Integer qtdReqNaoFunc;
	private Boolean isValidated;
	private Boolean isVerificated;
	private String descRecFunc;
	private String descRecNaoFunc;
	private Double orcamento;
	@ManyToOne
	@JoinColumn(name = "idUsuario")
	private Usuario usuario;

	public Integer getQtdReqFunc() 
	{
		return qtdReqFunc;
	}
	
	public void setQtdReqFunc(Integer qtdReqFunc) 
	{
		this.qtdReqFunc = qtdReqFunc;
	}
	
	public Integer getQtdReqNaoFunc() 
	{
		return qtdReqNaoFunc;
	}
	
	public void setQtdReqNaoFunc(Integer qtdReqNaoFunc) 
	{
		this.qtdReqNaoFunc = qtdReqNaoFunc;
	}
	
	public Boolean getIsValidated() 
	{
		return isValidated;
	}
	
	public void setIsValidated(Boolean isValidated) 
	{
		this.isValidated = isValidated;
	}
	
	public Boolean getIsVerificated() 
	{
		return isVerificated;
	}
	
	public void setIsVerificated(Boolean isVerificated) 
	{
		this.isVerificated = isVerificated;
	}
	
	public String getDescRecFunc() 
	{
		return descRecFunc;
	}
	
	public void setDescRecFunc(String descRecFunc) 
	{
		this.descRecFunc = descRecFunc;
	}
	
	public String getDescRecNaoFunc() 
	{
		return descRecNaoFunc;
	}
	
	public void setDescRecNaoFunc(String descRecNaoFunc) 
	{
		this.descRecNaoFunc = descRecNaoFunc;
	}

	public Double getOrcamento() 
	{
		return orcamento;
	}
	
	public void setOrcamento(Double orcamento) 
	{
		this.orcamento = orcamento;
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
		return super.toString() + "Analise [qtdReqFunc=" + qtdReqFunc + ", qtdReqNaoFunc=" + qtdReqNaoFunc 
				+ ", isValidated=" + isValidated + ", isVerificated=" + isVerificated + ", recFunc=" 
				+ descRecFunc + ", recNaoFunc=" + descRecNaoFunc + ", orcamento=" + orcamento +" ]";
	}
}