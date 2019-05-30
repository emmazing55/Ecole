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
public class Classe {
    
    
private Integer id;
	private String nom;
	private Ecole ecole;
	private Niveau niveau;
	private AnneeScolaire anneeScolaire;
	
	
	public Classe() {
	}
	
	public Classe( String nom,Ecole ecole, Niveau niveau, AnneeScolaire anneeScolaire) {
		this.nom = nom;
		this.ecole = ecole;
		this.niveau = niveau;
		this.anneeScolaire = anneeScolaire;
	}

	public Classe(Integer id, String nom ,Ecole ecole, Niveau niveau, AnneeScolaire anneeScolaire) {
		this(nom,ecole,niveau,anneeScolaire);
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
	 * @return the ecole
	 */
	public Ecole getEcole() {
		if (ecole == null)
		{	
			ecole = new Ecole();
		}	
		return ecole;
	}
	/**
	 * @param ecole the ecole to set
	 */
	public void setEcole(Ecole ecole) {
		this.ecole = ecole;
	}
	/**
	 * @return the niveau
	 */
	public Niveau getNiveau() {
		if (niveau == null)
		{	
			niveau = new Niveau();
		}	
		return niveau;
	}
	/**
	 * @param niveau the niveau to set
	 */
	public void setNiveau(Niveau niveau) {
		this.niveau = niveau;
	}
	/**
	 * @return the anneeScolaire
	 */
	public AnneeScolaire getAnneeScolaire() {
		
		if (anneeScolaire == null)
		{	
			anneeScolaire = new AnneeScolaire();
		}	
		return anneeScolaire;
	}
	/**
	 * @param anneeScolaire the anneeScolaire to set
	 */
	public void setAnneeScolaire(AnneeScolaire anneeScolaire) {
		this.anneeScolaire = anneeScolaire;
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
	
	@Override
	public String toString() {
	    return id + " " + nom;
	}

}

