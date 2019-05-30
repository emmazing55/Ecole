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
public class Niveau {
    private Integer id;
	private String nom;
	
	
	public Niveau() {
	}


	public Niveau(String nom) {
		this.nom = nom;
	}

	
	public Niveau(Integer id, String nom) {
		this.id = id;
		this.nom = nom;
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
	 * @return the nom
	 */
	public String getNom() {
		return nom;
	}


	/**
	 * @param nom the nom to set
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}
	

	
	


}
