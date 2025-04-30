<?php
//muestra la pagina del formulario para ello obtiene o recibe el url con el 
//metodo GET 
if($_SERVER['REQUEST_METHOD']== "GET"){
    //se declara una variable $user_id para que guarde el valor que se obtiene de la URL
    $user_id = $_GET['user_id'];
    //Requiere ejecutar el formulario task_create.php
    include_once "../views/task_create.php";
    //sale de la ejecucion
    exit;
}
//Una vez enviado el formulario de creacion de tareas
if($_SERVER['REQUEST_METHOD'] == "POST"){
//requiere a los modelos de Task.php y User.php 
    require_once "../models/Task.php";
    require_once "../models/User.php"; 
//Se crean 3 diferentes variables que recogen los datos enviados en el formulario
    $description = $_POST["description"];
    $due_day = $_POST["due_day"];
    $id_user =  $_POST["id_user"];
//Se crea un objeto de la clase Task()
    $task = new Task();
//La condicion evalua si se retorna algun dato si se accede al metodo create enviando 
//los datos que se recogieron en el formulario
    if($task->create($description, $due_day, $id_user)){
        //si se retorna datos redirige al controlador de tareas 
        //con el valor de id_user
        header("Location: task_controller.php?id=$id_user");
    } else {
        //sino ejecuta el file 404.php
        include_once "../views/404.php";
    }
    exit;
}