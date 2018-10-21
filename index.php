<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta charset="UTF-8">
        <title></title>
    </head>
    <body>
        <?php
        try {
			$db = new PDO("mysql:host=localhost;dbname=training", "root","nan587");
			$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
		} catch (PDOException $e) {
			var_dump($e);
		}
		
		try {
			$query=$db->prepare("select nume,prenume from angajati");
			$query->execute();
			$rezultat=$query->fetchAll(PDO::FETCH_ASSOC);
			
			//echo $rezultat;
			echo '<pre>';
			var_dump($rezultat[0]);
			echo '</pre>';
			echo $rezultat[0];
			
		} catch (PDOException $e) {
			var_dump($e);
		}
		echo "merge";
        ?>
    </body>
</html>
