package dao;

import java.util.List;

import entity.AdministrateurEntity;

public interface AdministrateurDAO 
{
    public void addAdministrateur(AdministrateurEntity administrateur);
    public void editeAdministrateur(AdministrateurEntity administrateur);
    public List<AdministrateurEntity> getAllAdministrateurs();
    public AdministrateurEntity getAdministrateurById(Integer administrateurId);
    public void deleteAdministrateur(Integer administrateurId);
    
}