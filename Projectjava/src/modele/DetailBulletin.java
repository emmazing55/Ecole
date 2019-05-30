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
public class DetailBulletin {
    
private Integer id;
	private Bulletin bulletin;
	private Enseignement enseignement;
	private String appreciation;
	
	
		
	public DetailBulletin() {
		super();
	
	}
	
	public DetailBulletin(Bulletin bulletin, Enseignement enseignement, String appreciation) {
		this.bulletin = bulletin;
		this.enseignement = enseignement;
		this.appreciation = appreciation;
	}
	
	public DetailBulletin(Integer id, Bulletin bulletin, Enseignement enseignement, String appreciation) {
		this(bulletin,enseignement,appreciation);
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
	 * @return the bulletin
	 */
	public Bulletin getBulletin() {
		return bulletin;
	}
	/**
	 * @param bulletin the bulletin to set
	 */
	public void setBulletin(Bulletin bulletin) {
		this.bulletin = bulletin;
	}
	/**
	 * @return the enseignement
	 */
	public Enseignement getEnseignement() {
		return enseignement;
	}
	/**
	 * @param enseignement the enseignement to set
	 */
	public void setEnseignement(Enseignement enseignement) {
		this.enseignement = enseignement;
	}
	/**
	 * @return the appreciation
	 */
	public String getAppreciation() {
		return appreciation;
	}
	/**
	 * @param appreciation the appreciation to set
	 */
	public void setAppreciation(String appreciation) {
		this.appreciation = appreciation;
	}
	
	
	

}

