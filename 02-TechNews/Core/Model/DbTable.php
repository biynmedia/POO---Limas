<?php

namespace Core\Model;

abstract class DbTable {
    
    # Nom de la Table
    protected $_table;
    
    # Clé Primaire
    protected $_primary;
    
    # Classe à Mapper
    protected $_classToMap;
    
    # Objet PDO, BDD
    private $_db;
    
    public function __construct() {
        $this->_db = DbFactory::PDOFactory();
    }
    
    /**
     * Fonction qui sera chargé de récupérer toutes les informations
     * d'une table dans la BDD.
     */
    public function fetchAll() {
        
        $sql = "SELECT * FROM ".$this->_table;
        $sth = $this->_db->prepare($sql);
        $sth->execute();
        return $sth->fetchAll(\PDO::FETCH_CLASS, $this->_classToMap);
        
    }
    
}











