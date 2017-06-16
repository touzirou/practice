<?php

class MysqlConnector{

    private $mysqli;
    private $config;

    function __construct(){
        $this->config = parse_ini_file(__DIR__ . '/../conf/db.conf');
        $this->connect_db();
    }

    function __destruct(){
        $this->mysqli->close();
    }

    function search(){
        $sql = 'select * from YahooItems order by releaseDate;';
        return $this->query($sql);
    }

    private function connect_db(){
        // mysql に接続
        $this->mysqli = new mysqli($this->config['ACCESS_DB'], $this->config['DATABASE_USER'], $this->config['DATABASE_PASSWORD'], $this->config['DATABASE_NAME']);
        $this->mysqli->set_charset("utf8");
    }

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