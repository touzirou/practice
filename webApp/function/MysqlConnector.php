<?php

/**
 * MySQL 用Connector
 * @author rTsujimoto
 */
class MysqlConnector{

    private $mysqli;
    private $access_db;
    private $database_name;
    private $database_user;
    private $database_password;

    // コンストラクタ
    function __construct(){
        $this->access_db = getenv('REMOTE_DATABASE');
        $this->database_name = getenv('GAME_DATABASE_NAME');
        $this->database_user = getenv('DATABASE_USER');
        $this->database_password = getenv('DATABASE_PASSWORD');
        $this->connect_db();
    }

    // デストラクタ
    function __destruct(){
        $this->mysqli->close();
    }

    /**
     * SELECT 文を発行し、結果を返却する
     * @author rTsujimoto
     * @return array 検索結果
     */
    function search(){
        $sql = "SELECT
                  i.jan, i.name, i.url, i.price, DATE_FORMAT(i.releaseDate, '%Y/%m/%d') as releaseDate, c.name as cName 
                FROM 
                  YahooItems i JOIN YahooCategory c ON i.categoryId = c.id 
                WHERE 
                  releaseDate IS NOT NULL 
                ORDER BY 
                  releaseDate, cName, name;";
        return $this->query($sql);
    }

    /**
     * DBに接続を行う
     * @author rTsujimoto
     */
    private function connect_db(){
        $this->mysqli = new mysqli($this->access_db, $this->database_user, $this->database_password, $this->database_name);
        $this->mysqli->set_charset("utf8");
    }

    /**
     * SQL文の発行
     * @author rTsujimoto
     */
    private function query($sql){
        $result = $this->mysqli->query($sql);
        $data = array();
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        $result->close();
        return $data;
    }
}
