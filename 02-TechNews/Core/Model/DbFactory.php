<?php

namespace Core\Model;

class DbFactory {
    
    /**
     * Initialisation de la connexion PDO
     * @return \PDO
     */
    public static function PDOFactory() {
        
        # Création d'une Connexion PDO
        $pdo = new \PDO('mysql:host='.DBHOST.';dbname='.DBNAME, DBUSERNAME, DBPASSWORD);
        
        # Gestion des erreurs : http://php.net/manual/fr/pdo.error-handling.php
        $pdo->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
        
        # On retourne $pdo
        return $pdo;
        
    }
    
    public static function ORMFactory() {
        
        # Initialisation de Idiorm
        ORM::configure('mysql:host='.DBHOST.';dbname='.DBNAME);
        ORM::configure('username', DBUSERNAME);
        ORM::configure('password', DBPASSWORD);
        
        # Configuration de la clé primaire de chaque table
        # Cette configuration n'est nécessaire que si 
        # les clé primaires sont différentes de 'id'
        
        ORM::configure('id_column_overrides', array(
            'article'       =>  'IDARTICLE',
            'view_articles' =>  'IDARTICLE'
        ));
        
    }
    
}










