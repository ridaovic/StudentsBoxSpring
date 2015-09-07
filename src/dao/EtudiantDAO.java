package dao;

import java.util.List;

import entity.EtudiantEntity;

public interface EtudiantDAO 
{
    public void addEtudiant(EtudiantEntity etudiant);
    public void editeEtudiant(EtudiantEntity etudiant);
    public List<EtudiantEntity> getAllEtudiants();
    public EtudiantEntity getEtudiantById(Integer etudiantId);
    public void deleteEtudiant(Integer etudiantId);
    public void enableDisableEtudiant(Integer etudiantId);
    
    
}