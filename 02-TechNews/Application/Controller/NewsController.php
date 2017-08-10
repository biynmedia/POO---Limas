<?php
namespace Application\Controller;

use Application\Model\Article\ArticleDb;
use Core\Model\ORM;

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
    
    public function business() {     
        
         # Connexion à la BDD
         $ArticleDb = new ArticleDb();
            
         # Récupération des Articles
         $articles  = $ArticleDb->fetchAll('IDCATEGORIE = 2');
        
         # Transmission à la Vue
         $this->render('news/categorie', ['articles' => $articles]);
    }
    
    public function computing() {
    
        # Connexion à la BDD
        $ArticleDb = new ArticleDb();
    
        # Récupération des Articles
        $articles  = $ArticleDb->fetchAll('IDCATEGORIE = 3');
    
        # Transmission à la Vue
        $this->render('news/categorie', ['articles' => $articles]);
    }
    
    public function tech() {
    
        # Connexion à la BDD
        $ArticleDb = new ArticleDb();
    
        # Récupération des Articles
        $articles  = $ArticleDb->fetchAll('IDCATEGORIE = 4');
    
        # Transmission à la Vue
        $this->render('news/categorie', ['articles' => $articles]);
    }
    
    public function article() {
        
        # Récupération de l'Article
        #print_r($_GET);
        $article = ORM::for_table('view_articles')->find_one($_GET['idarticle']);
        
        # Récupération des Articles de la Catégorie (suggestions)
        $suggestions = ORM::for_table('view_articles')
        
            # Je récupère uniquement les articles de la même catégorie que mon article
            ->where('IDCATEGORIE', $article->IDCATEGORIE)
            
            # Sauf mon article en cours
            ->where_not_equal('IDARTICLE', $article->IDARTICLE)
            
            # 3 articles maximum
            ->limit(3)
            
            # Par ordre décroissant
            ->order_by_desc('IDARTICLE')
            
            # Je récupère les résultats
            ->find_result_set();
        
        $this->render('news/article',[
            'article' => $article,
            'suggestions' => $suggestions
        ]);
    }
    
    /**
     * Test de fonctionnement de IDIORM
     */
    public function idiorm() {
        
        $categories = ORM::for_table('categorie')->find_result_set();
        #print_r($categorie);
        
        foreach ($categories as $categorie) {
            echo $categorie->LIBELLECATEGORIE.'<br>';
        }
        
        # Afficher la liste des Auteurs du site dans un Tableau HTML
        $auteurs = ORM::for_table('auteur')->find_result_set();
        
        echo '<table border="1">';
        
            foreach($auteurs as $auteur) {
                
                echo '<tr>';
                    echo '<td>'.$auteur->IDAUTEUR.'</td>';
                    echo '<td>'.$auteur->PRENOMAUTEUR.'</td>';
                    echo '<td>'.$auteur->NOMAUTEUR.'</td>';
                    echo '<td>'.$auteur->EMAILAUTEUR.'</td>';
                echo '</tr>';
                
            }
        
        echo '</table>';
        
        
    }
}















