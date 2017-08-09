<?php
namespace Application\Controller;

use Application\Model\Article\ArticleDb;

class NewsController extends \Core\Controller\AppController
{
    public function index() {
        
        # Connexion à la BDD
        $ArticleDb = new ArticleDb();
        
        # Récupération des Articles
        $articles   = $ArticleDb->fetchAll();
        
        # Récupération des Articles en Spotlight
        $where      = 'SPOTLIGHTARTICLE = 1';
        $spotlight  = $ArticleDb->fetchAll($where);
        
        # Affichage dans la Vue
        $this->render('news/index', [
            'articles' => $articles, 
            'spotlight' => $spotlight
        ]);
    }
    
    public function categorie() {            
        $this->render('news/index');
    }
    
    public function article() {
        $this->render('news/index');
    }
}





