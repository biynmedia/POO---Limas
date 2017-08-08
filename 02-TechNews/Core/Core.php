<?php

namespace Core;

class Core extends \Core\Controller\AppController {
    
    public function __construct($params) {
        
        #print_r($params);
        if(empty($params)) {
            $params['controller'] = 'news';
            $params['action']     = 'index';
        }
        
        // -- Récupération des paramètres
        $controller = 'Application\Controller\\'.ucfirst($params['controller']).'Controller';  
        $action     = $params['action'];
        
        
        // -- On vérifie si le fichier du controleur existe avant de l'instancier
        if( file_exists( RACINE_SITE.'\\'.$controller.'.php' ) ) {
            
            $obj = new $controller;
            
            // -- Si la méthode existe dans mon controleur, alors je peux l'executer.
            if( method_exists($obj, $action) ) {
                
                // -- Execution de l'action
                $obj->$action();
                
            } else {
                #echo "<h1>Erreur 404 - Page Introuvable</h1><h3>Aucune vue correspondante.</h3>";
                $this->render('errors/404',['erreur'=>'Aucune vue correspondante']);
            }
            
        } else {
            
            // -- Sinon, le fichier du controleur n'existe pas, donc je renvoi une erreur 404.
            #echo "<h1>Erreur 404 - Page Introuvable</h1><h3>Ce controleur n'existe pas.</h3>";
            $this->render('errors/404', ['erreur'=>'Ce controleur n\'existe pas.']);
            
        }
        
        #if($controller == "news" && $action == "article") {
        #    echo '<h1>ARTICLE  !</h1>';
        #}
        
        
        
        
        
        
    }
    
}