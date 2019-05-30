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
import java.util.Date;

public class AnneeScolaire {
	
	private Integer id;
	private Date dateDebut;
	private Date dateFin;
	
	
	public AnneeScolaire() {

	}	

	public AnneeScolaire (Date dateDebut, Date dateFin) {
		this.dateDebut = dateDebut;
		this.dateFin = dateFin;
	}
	
	public AnneeScolaire(Integer id, Date dateDebut, Date dateFin) {
		this(dateDebut,dateFin);
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
	 * @return the dateDebut
	 */
	public Date getDateDebut() {
		return dateDebut;
	}

	/**
	 * @param date the dateDebut to set
	 */
	public void setDateDebut(Date date) {
		this.dateDebut = date;
	}

	/**
	 * @return the dateFin
	 */
	public Date getDateFin() {
		return dateFin;
	}

	/**
	 * @param dateFin the dateFin to set
	 */
	public void setDateFin(Date dateFin) {
		this.dateFin = dateFin;
	}
	
	

}

