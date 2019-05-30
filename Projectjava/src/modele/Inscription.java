/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modele;

/**
 *
 * @author emmaz
 */
public class Inscription {
    
    
private Integer id;
	private Classe classe;
	private Personne etudiant;

	
	public Inscription()
	{
	}
	
	public Inscription(Classe classe, Personne etudiant) {
		this.classe = classe;
		this.etudiant = etudiant;
	}
	
	public Inscription(Integer id, Classe classe, Personne etudiant) {
		this(classe ,etudiant);
		this.id = id;
	}

	
	/**
	 * @return the id
	 */
	public Integer getId() {
		return id;
	}
	/**
	 * @param id the id to set
	 */
	public void setId(Integer id) {
		this.id = id;
	}
	/**
	 * @return the classe
	 */
	public Classe getClasse() {
		
		
		if( classe== null)
		{
			classe = new Classe();
		}
		
		return classe;
	}
	/**
	 * @param classe the classe to set
	 */
	public void setClasse(Classe classe) {
		this.classe = classe;
	}
	/**
	 * @return the etudiant
	 */
	public Personne getEtudiant() {
		
		if( etudiant== null)
		{
			etudiant = new Personne();
		}
		return etudiant;
	}
	/**
	 * @param etudiant the etudiant to set
	 */
	public void setEtudiant(Personne etudiant) {
		this.etudiant = etudiant;
	}
	
}

