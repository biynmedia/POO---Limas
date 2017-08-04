<?php

/*--
 * Création d'une Classe Article
 * Une Classe est une entité regroupant des variables / propriétés 
 * et des fonctions.
 */

class Article {
    
    // -- Déclaration des propriétés de notre Class "Article"
    private $Titre,
            $Accroche,
            $Description,
            $FeaturedImage,
            $DateCreationArticle,
            $Auteur;
    
    /**
     * Afin de pouvoir attribuer une valeur à mes différentes variables,
     * Je vais mettre en place un constructeur
     */
    public function __construct(
        $Titre,
        $Accroche,
        $Description,
        $FeaturedImage,
        $DateCreationArticle) {
        
        // -- Ici, nous allons attribuer à chaque propriété de notre classe,
        // -- la valeur qui à été passée au constructeur.
        
        $this->Titre                = $Titre;
        $this->Accroche             = $Accroche;
        $this->Description          = $Description;
        $this->FeaturedImage        = $FeaturedImage;
        $this->DateCreationArticle  = $DateCreationArticle;
        
    } // Fin de mon Constructeur
    
    /**
     * Getters : Fonctions qui vont avoir la charge de nous renvoyer nos informations.
     * Nous aurons une fonction par propriété de notre classe. 
     */
    
    public function getTitre() {
        return $this->Titre;
    }
    
    /**
     * @return the $Accroche
     */
    public function getAccroche()
    {
        return $this->Accroche;
    }

    /**
     * @return the $Description
     */
    public function getDescription()
    {
        return $this->Description;
    }

    /**
     * @return the $FeaturedImage
     */
    public function getFeaturedImage()
    {
        return $this->FeaturedImage;
    }

    /**
     * @return the $DateCreationArticle
     */
    public function getDateCreationArticle()
    {
        return $this->DateCreationArticle;
    }

    /**
     * Setters : Fonctions qui vont avoir la charge de modifier les propriétés de notre
     * Class.
     */
    
    public function setTitre($MonNouveauTitre) {
        $this->Titre = $MonNouveauTitre;
    }
    
    public function setAuteur(Auteur $Auteur) {
        $this->Auteur = $Auteur;
    }
    
    public function getAuteur() {
        return $this->Auteur;
    }
            
} // Fin de ma Classe Article














