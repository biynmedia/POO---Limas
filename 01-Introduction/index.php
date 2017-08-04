<?php

include 'Article.class.php';
include 'Categorie.class.php';
include 'Auteur.class.php';

/**
 * Création d'une instance de la Class "Article"
 * Ici, notre variable $UnArticle est un Objet de la classe Article.
 * En ce sens, elle a accès à l'ensemble des propriétés et fonctions qui la composent.
 */

$Auteur = new Auteur('LIEGEARD', 'Hugo', 'wf3@hl-media.fr');

$UnArticle = new Article("La Formation WF3", "Une Formation Certifiante en 3 mois !", "Rejoignez-nous à Limas et vous verrez bien !", "wf3.jpg", "04/08/2017");

$UnArticle->setAuteur($Auteur);

// -- Afficher l'Objet Article
echo '<pre>';
print_r($UnArticle);
echo '</pre>';

// -- 

$UnDeuxiemeArticle = new Article("SUPINFO", "Une Ecole pour les Ingénieurs !", "Venez nombweu pouw prendre le Ti-Punch...", "ti-punch.jpg", "04/08/2017");

$UnDeuxiemeArticle->setAuteur($Auteur);

// -- Afficher l'Objet Article
echo '<pre>';
print_r($UnDeuxiemeArticle);
echo '</pre>';

// -- Je veux afficher le Titre de mon Premier Article
#echo $UnArticle->Titre;
# : Uncaught Error: Cannot access private property Article::$Titre

echo $UnArticle->getTitre();
echo ' - ';
echo $UnArticle->getAccroche();
echo '<br>';
echo $UnDeuxiemeArticle->getTitre();
echo ' - ';
echo $UnDeuxiemeArticle->getAccroche();

// -- Ici, je vais modifier le titre de mon article
echo '<br><br>';
$UnArticle->setTitre('La Formation WebForce3');
echo $UnArticle->getTitre();

echo '<pre>';
print_r($UnArticle);
echo '</pre>';

echo '<hr>';

$UneCategorie = new Categorie('Formation Informatique');
$UneCategorie->AjouterUnArticle($UnArticle);
$UneCategorie->AjouterUnArticle($UnDeuxiemeArticle);
#$UneCategorie->AjouterUnArticle("Titre de mon Article");

echo '<pre>';
print_r($UneCategorie);
echo '</pre>';

echo '<hr>';

echo '<ol>';
    echo '<li>';
        echo $UneCategorie->getLibelle();
    echo '</li>';
    echo '<ul>';
       $articles = $UneCategorie->getCollectionArticles();
       foreach ($articles as $article) :
         echo "<li>". $article->getTitre() ." - ". 
            $article->getAuteur()->getNomComplet() ."</li>";
       endforeach;
    echo '</ul>';
echo '</ol>';






echo '<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>';




















