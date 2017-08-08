<?php
namespace Application\Controller;

use Application\Model\Categorie\CategorieDb;

class NewsController extends \Core\Controller\AppController
{
    public function index() {
        
        # Connexion à la BDD
        #$CategorieDb = new CategorieDb();
        
        # Récupération des Catégories
        #$categories = $CategorieDb->fetchAll();
        
        # Affichage dans la Vue
        $this->render('news/index');
    }
    
    public function categorie() {
        $this->render('news/index');
    }
    
    public function article() {
        $this->render('news/index');
    }
}