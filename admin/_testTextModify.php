<?php
    if(isset($_POST['fromTestShowText']))
    {
        $txtEvolucionOld = $_POST['descripcion'];
        $idSerie         = $_POST['serie'];
    }
    if(isset($_POST['Modify']) && isset($_POST["txtEvolucionOld"]))
    {
        $txtEvolucionOld = $_POST["txtEvolucionOld"];
        require_once('mysqli_connect.php');
        $query = "UPDATE  tblTest 
                  SET     clmTextArea  = ?
                  WHERE   clmSerie     = ?
                    ";
        $stmt = mysqli_prepare($dbc, $query);

        mysqli_stmt_bind_param($stmt, "ss", $_POST['txtEvolucionOld'], $_POST['idSerie']);
        mysqli_stmt_execute($stmt);
        $affected_rows = mysqli_stmt_affected_rows($stmt);
        echo "<br>". "affected_rows={"     . $affected_rows    ."}";
        if($affected_rows == 1)
        {
            $txtEvolucionOld = $recibeSerieEvolucion = '';
            echo "Modified";
            mysqli_stmt_close($stmt);
        }
        else
        {
            ini_set('display_errors', 'On');
            mysqli_stmt_close($stmt);
        }
    }
?>
<html>
    <head>
        <title>Modify TextArea</title>
    </head>
    <body>
         <br><a href="view_notice.php">Show</a>
         <br><a href="notice.php">Insert</a>
        <h1>Modify TextArea</h1>
        <div id="divAgenda"> 
        <form id="contact" action="" method="post">
            <fieldset>
                <input type="hidden" readonly id="idSerie" name="idSerie" size="2" type="text" maxlength="100" tabindex="3"
                       value="<?= $idSerie ?>"
                ><br>
                <textarea id="txtEvolucionOld"  name="txtEvolucionOld" tabindex="4" cols="90" rows="7" 
                          value="<?= $txtEvolucionOld ?> "
                ><?= $txtEvolucionOld ?></textarea><br><br>

                <button name="Modify" type="submit" id="contact-submit" data-submit="...Sending">Modify</button><br>
            </fieldset>
        </form>
    </body>
</html>