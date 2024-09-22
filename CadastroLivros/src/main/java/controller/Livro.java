package controller;

public class Livro {
	private int id;
	private String nome;
	private String img;
	private String descricao;
	private String categoria;
	private double preco;
	
	public Livro() {	
	}
	
	public Livro(String nome, String img, String descricao, String categoria, double preco) {
		this.nome = nome;
		this.img = img;
		this.descricao = descricao;
		this.categoria = categoria;
		this.preco = preco;
	}
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public String getNome() {
		return nome;
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getImg() {
		return img;
	}
	
	public void setImg(String img) {
		this.img = img;
	}
	
	public String getDescricao() {
		return descricao;
	}
	
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	
	public String getCategoria() {
		return categoria;
	}
	
	public void setCategoria(String categoria) {
		this.categoria = categoria;
	}

	public double getPreco() {
		return preco;
	}

	public void setPreco(double preco) {
		this.preco = preco;
	}	
}
