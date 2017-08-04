<?php
class Categorie {
    
    private $Libelle;
    private $CollectionArticles = [];
    
    public function __construct($Libelle) {
        $this->Libelle = $Libelle;
    }
    
    /**
     * @return the $Libelle
     */
    public function getLibelle()
    {
        return $this->Libelle;
    }
    
    /**
     * @return the $CollectionArticles
     */
    public function getCollectionArticles() {
        return $this->CollectionArticles;
    }

    /**
     * @param field_type $Libelle
     */
    public function setLibelle($Libelle)
    {
        $this->Libelle = $Libelle;
    }
    
    /**
     * Permet d'ajouter un Objet Article à notre tableau (Collection) d'Articles
     */
    public function AjouterUnArticle(Article $Article) {
        $this->CollectionArticles[] = $Article;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

    
    
}