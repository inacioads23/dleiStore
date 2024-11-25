package model;

import java.io.Serializable;
import java.math.BigDecimal;

public class ModelProduto implements Serializable{

	private static final long serialVersionUID = 1L;
	
	private Long idProduto;
	private String categoria;
	private String produto;
	private String tipo;
	private BigDecimal vlCompra;
	private float icms;
	private BigDecimal vlVenda;
	
	// Método para verificar "id"
	public boolean isNovo() {
		// Se "id" for null/ não tiver valor
		if(this.idProduto == null) {
			return true;// Inserir novo
			// Se "id" não for nulo e o valor for maior que "0" 
		}else if(this.idProduto != null  && this.idProduto > 0) {
			return false;// Atualizar
		}
		return idProduto == null;
	}
	
	public Long getIdProduto() {
		return idProduto;
	}
	public void setIdProduto(Long idProduto) {
		this.idProduto = idProduto;
	}
	public String getCategoria() {
		return categoria;
	}
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}
	public String getProduto() {
		return produto;
	}
	public void setProduto(String produto) {
		this.produto = produto;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public BigDecimal getVlCompra() {
		return vlCompra;
	}
	public void setVlCompra(BigDecimal vlCompra) {
		this.vlCompra = vlCompra;
	}
	public float getIcms() {
		return icms;
	}
	public void setIcms(float icms) {
		this.icms = icms;
	}
	public BigDecimal getVlVenda() {
		return vlVenda;
	}
	public void setVlVenda(BigDecimal vlVenda) {
		this.vlVenda = vlVenda;
	}	
}
