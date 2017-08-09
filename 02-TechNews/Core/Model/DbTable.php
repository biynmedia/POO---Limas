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
     * @param $where Condition Where. Ex. IDPRODUIT = 1
     */
    public function fetchAll($where = '') {
        
        $sql = "SELECT * FROM ".$this->_table;
        
        # Si $where n'est pas vide, alors je l'inclus dans ma requète.
        if($where != '') {
            $sql .= ' WHERE '.$where;
        }
        
        $sth = $this->_db->prepare($sql);
        $sth->execute();
        return $sth->fetchAll(\PDO::FETCH_CLASS, $this->_classToMap);
        
    }
    
    /**
     * Récupère un Enregistrement dans la BDD pour l'ID 
     * et la colonne passée en paramètres.
     * @param Entier $id ID de l'élément à récupérer dans la BDD
     * @param String $column Si différent de la clé primaire
     * @return Objet de la Classe Cible
     */
    public function fetchOne($id, $column = '') {
        
        if($column == '') {
            $column = $this->_primary;
        }
        
        $sth = $this->_db->prepare('SELECT * FROM '.$this->_table.' WHERE '.$column.' = :id'); 
        $sth->bindValue(':id', (int) $id, \PDO::PARAM_INT);
        $sth->execute();
        
       $sth->setFetchMode(\PDO::FETCH_CLASS, $this->_classToMap);
       return $sth->fetch();
       
    }
    
}











