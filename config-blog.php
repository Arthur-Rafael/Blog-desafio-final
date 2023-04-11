<?php

$mysql = new mysqli('localhost', 'root', '', 'final');
$mysql->set_charset('utf8');

if ($mysql == FALSE) {
    echo "Erro na conexão";
}