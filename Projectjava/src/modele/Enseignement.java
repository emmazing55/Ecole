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
public class Enseignement {
    private Integer id;
	private Classe classe;
	private Discipline discipline ;
	private Personne enseignant;
	
	
	public Enseignement() {
	}

	public Enseignement(Classe classe, Discipline discipline, Personne enseignant) {
		this.classe = classe;
		this.discipline = discipline;
		this.enseignant = enseignant;
	}

	public Enseignement(Integer id, Classe classe, Discipline discipline, Personne enseignant) {
		this(classe,discipline,enseignant);
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
		return classe;
	}

	/**
	 * @param classe the classe to set
	 */
	public void setClasse(Classe classe) {
		this.classe = classe;
	}

	/**
	 * @return the discipline
	 */
	public Discipline getDiscipline() {
		return discipline;
	}

	/**
	 * @param discipline the discipline to set
	 */
	public void setDiscipline(Discipline discipline) {
		this.discipline = discipline;
	}

	/**
	 * @return the enseignant
	 */
	public Personne getEnseignant() {
		return enseignant;
	}

	/**
	 * @param enseignant the enseignant to set
	 */
	public void setEnseignant(Personne enseignant) {
		this.enseignant = enseignant;
	}
	
	
	
	
    
}
