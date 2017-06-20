<?php

/**
 * MySQL 用Connector
 * @author rTsujimoto
 */
class MysqlConnector{

    private $mysqli;
    private $config;

    // コンストラクタ
    function __construct(){
        $this->config = parse_ini_file(__DIR__ . '/../conf/db.conf');
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
        $this->mysqli = new mysqli($this->config['ACCESS_DB'], $this->config['DATABASE_USER'], $this->config['DATABASE_PASSWORD'], $this->config['DATABASE_NAME']);
        $this->mysqli->set_charset("utf8");
    }

    /**
     * SQL文の発行
     * @author rTsujimoto
     */
    private function query($sql){
        $result = $this->mysqli->query($sql);
        $this->count = $result->num_rows;
        $data = array();
        while ($row = $result->fetch_assoc()) {
            $data[] = $row;
        }
        $result->close();
        return $data;
    }
}