<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar tarea</title>
    <link rel="stylesheet" href="../style.css">
</head>
<body>
<div class="formTaskCreate">
    <h1>Agregar nueva tarea</h1>
<!--Se crea un formulario que redirige en envia datos por medio de POST-->
    <form action="../controllers/task_create.php" method="POST">
<!--Se envia de manera oculta el name = id_user que guarda el valor de $user_id -->
        <input type="hidden" name="id_user" value="<?= htmlspecialchars($user_id) ?>">
<!--Aca hay una condicion donde se imprime usuario el valor de $GET_[user_id] SI EXISTE
SINO se imprime nada '' -->
        <label for="id" >Usuario:  <?= $_GET['user_id'] ?? ''?></label>
        <br><br>
        <label for="description" >Descripción:</label>
        <br><br>
<!--Se CREA etiqueta textarea con 6 lineas -->
        <textarea id="description" rows ="6" name="description" required></textarea>
        <br><br>
        <label for="due-day" >Fecha:</label>
        <input type="date" id="due_day" name="due_day" required>
        <br>
<!--con el boton entrega los datos al URL de action -->
        <button type="submit">Aceptar</button>
    </form>
    <br><br>
<!--Enlace que Redirige al controlador de tareas con el id del usuario -->    
    <a href="../controllers/task_controller.php?id=<?= $_GET['user_id'] ?>"  class="button">Volver a la lista de tareas</a>
<!--Enlace que Redirige al index general -->    
    <a href="../index.php" class="button">Volver al inicio</a>
</div>
</body>
</html>