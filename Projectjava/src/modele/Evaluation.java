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
public class Evaluation {
    private Integer id;
	private DetailBulletin detail;
	private Integer note;
	private String appreciation;
	
	
	public Evaluation() {
	}


	public Evaluation(DetailBulletin detail, Integer note, String appreciation) {
		this.detail = detail;
		this.note = note;
		this.appreciation = appreciation;
	}

	
	public Evaluation(Integer id, DetailBulletin detail, Integer note, String appreciation) {
		this(detail,note,appreciation);
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
	 * @return the detail
	 */
	public DetailBulletin getDetail() {
		return detail;
	}


	/**
	 * @param detail the detail to set
	 */
	public void setDetail(DetailBulletin detail) {
		this.detail = detail;
	}


	/**
	 * @return the note
	 */
	public Integer getNote() {
		return note;
	}


	/**
	 * @param note the note to set
	 */
	public void setNote(Integer note) {
		this.note = note;
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
