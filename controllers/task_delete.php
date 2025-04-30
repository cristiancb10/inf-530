<?php
//requiere lo metodos de la clase Task.php
require_once '../models/Task.php';
//Conciona y se recibe algun formulario por POST y que el valor recibido exista en el array
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['id'])) {
//de declara una variable $id_user donde se guardara el valor de $_POST['user_id']
//?? significa que si cumple lo anterior asigna el user_id pero sino asigna ""
    $id_user = $_POST['user_id'] ?? '';
//se declara un objeto de la clase Task()
    $task = new Task();
//se declara una variable $tasks donde se guarda $task 
    $tasks = $task;
//el objeto tasks llama al metodo delete de Task() y le envia el dato por medio de $_POST 
//ademas el metodo delete() devuelve un booleano TRUE O FALSE si es TRUE redirige al controller
//osea delete($_POST['ID']) puede ser TRUE O FALSE
    if ($tasks->delete($_POST['id'])) {
        //redirige conservando al controlador ID de usuario al controller de tareas
        header("Location: task_controller.php?id=$id_user");
    } else {
        //si no se ha hecho la eliminacion redirige a 404.php
        header("Location: ../views/404.php");
    }
        exit;
}
