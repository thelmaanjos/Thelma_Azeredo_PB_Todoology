package br.edu.infnet.appAT.model.negocio;

import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

@Entity
@Table(name = "TImplantacao")
@PrimaryKeyJoinColumn(name = "idTarefa")
public class Implantacao extends Tarefa
{
	private Boolean isInstalled;
	private Boolean isFuncTrained;
	private Boolean isSystemWorking;
	private Integer qtdFuncTreinados;
	private Date dataEntrega;
	private String consideracoes;
	@ManyToOne
	@JoinColumn(name = "idUsuario")
	private Usuario usuario;
	
	public Boolean getIsInstalled() 
	{
		return isInstalled;
	}
	
	public void setIsInstalled(Boolean isInstalled) 
	{
		this.isInstalled = isInstalled;
	}

	public Boolean getIsFuncTrained() 
	{
		return isFuncTrained;
	}
	
	public void setIsFuncTrained(Boolean isFuncTrained) 
	{
		this.isFuncTrained = isFuncTrained;
	}
	
	public Boolean getIsSystemWorking() 
	{
		return isSystemWorking;
	}
	
	public void setIsSystemWorking(Boolean isSystemWorking) 
	{
		this.isSystemWorking = isSystemWorking;
	}
	
	public Integer getQtdFuncTreinados() 
	{
		return qtdFuncTreinados;
	}
	
	public void setQtdFuncTreinados(Integer qtdFuncTreinados) 
	{
		this.qtdFuncTreinados = qtdFuncTreinados;
	}
	
	public Date getDataEntrega() 
	{
		return dataEntrega;
	}
	
	public void setDataEntrega(Date dataEntrega) 
	{
		this.dataEntrega = dataEntrega;
	}
	
	public String getConsideracoes() 
	{
		return consideracoes;
	}
	
	public void setConsideracoes(String consideracoes) 
	{
		this.consideracoes = consideracoes;
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
		return super.toString() + "Implantacao [isInstalled=" + isInstalled 
				+ ", isFuncTrained=" + isFuncTrained + ", isSystemWorking=" 
				+ isSystemWorking + ", qtdFuncTreinados=" + qtdFuncTreinados + ", dataEntrega="
				+ dataEntrega + ", consideracoes=" + consideracoes + "]";
	}
}