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
public class Personne {
   
private Integer id;
	private String nom;
	private String prenom;
	private String type;
	
	
	
	public Personne() {
	}

	
	public Personne(String prenom, String nom, String type) {
		this.prenom = prenom;
		this.nom = nom;
		this.type = type;

	}

	public Personne(Integer id, String prenom, String nom, String type) {
	    this(prenom,nom,type);
		this.id = id; 
	}

	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}

	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
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
	 * @param nom
	 */
	public void setNom(String nom) {
		this.nom = nom;
	}
	/**
	 * @return
	 */
	public String getPrenom() {
		return prenom;
	}
	/**
	 * @param prenom
	 */
	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}
	
	/**
	 * @return
	 */
	public String getNom() {
		return nom;
	}
	
	
	public boolean isEtudiant()
	{
		return (this.type.equals("P")) ?false:true;
	}
	
	@Override
	public String toString() {
	    return id + " " + nom + " "+ prenom;
	}
}


