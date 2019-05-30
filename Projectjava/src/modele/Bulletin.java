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
public class Bulletin {
    private Integer id;
	private Trimestre trimestre;
	private Inscription inscription;
	private String appreciation;
	
	
	public Bulletin() {

	}
	
	public Bulletin(Trimestre trimestre, Inscription inscription, String appreciation) {
		this.trimestre = trimestre;
		this.inscription = inscription;
		this.appreciation = appreciation;
	}
	
	public Bulletin(Integer id, Trimestre trimestre, Inscription inscription, String appreciation) {
	    this(trimestre,inscription,appreciation);
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
	 * @return the trimestre
	 */
	public Trimestre getTrimestre() {
		return trimestre;
	}
	/**
	 * @param trimestre the trimestre to set
	 */
	public void setTrimestre(Trimestre trimestre) {
		this.trimestre = trimestre;
	}
	/**
	 * @return the inscription
	 */
	public Inscription getInscription() {
		return inscription;
	}
	/**
	 * @param inscription the inscription to set
	 */
	public void setInscription(Inscription inscription) {
		this.inscription = inscription;
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

    

