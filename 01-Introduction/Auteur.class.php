<?php

class Auteur {
    
    private $Nom,
            $Prenom,
            $Email;
    
    public function __construct(
        $Nom,
        $Prenom,
        $Email) {
        
            $this->Nom      = $Nom;
            $this->Prenom   = $Prenom;
            $this->Email    = $Email;
        
    }
    
    /**
     * @return the $Nom
     */
    public function getNom()
    {
        return $this->Nom;
    }

    /**
     * @return the $Prenom
     */
    public function getPrenom()
    {
        return $this->Prenom;
    }
    
    public function getNomComplet() {
        return $this->Prenom." ".$this->Nom;
    }

    /**
     * @return the $Email
     */
    public function getEmail()
    {
        return $this->Email;
    }

    /**
     * @param field_type $Nom
     */
    public function setNom($Nom)
    {
        $this->Nom = $Nom;
    }

    /**
     * @param field_type $Prenom
     */
    public function setPrenom($Prenom)
    {
        $this->Prenom = $Prenom;
    }

    /**
     * @param field_type $Email
     */
    public function setEmail($Email)
    {
        $this->Email = $Email;
    }

    
    
    
}