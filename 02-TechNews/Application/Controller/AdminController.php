<?php

namespace Application\Controller;

class AdminController extends \Core\Controller\AppController {
    
    /**
     * Affichage de la Page Connexion à l'Administration
     */
    public function connexion() {
        
        # Rendu de la vue admin/connexion.php
        $this->render('admin/connexion');
        
    }
    
}