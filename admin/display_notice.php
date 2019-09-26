 <?php

    $output = '';
    // $txtEvolucion = $_POST["txtEvolucion"];
        require_once('DatabaseConfig.php');
        $con = mysqli_connect($HostName,$HostUser,$HostPass,$DatabaseName);
    $query = mysqli_query($con,"SELECT  clmSerie
                                         ,clmTextArea
                                 FROM     notice
                                  "
          ) or die('Error to select!: {' . mysqli_error($con) . '}');

    $count = mysqli_num_rows($query);

    $output .= '<table border="" class="table" align="left" cellspacing="0" cellpadding="0">
                   <tr>
                  
                       <td align="center"><b>Serial Number </b></td>
                       <td align="center"><b>Notice</b></td>
                   </tr>';
    while($row = mysqli_fetch_array($query))
    {
        $serie       = $row['clmSerie'];
        $descripcion = utf8_encode($row['clmTextArea']);
        //$descripcion = nl2br($descripcion);

        $output .= '<tr>

        
                        <td align="left">' .$serie         . '</td>
                        <td align="left"><input hidden readonly id="serie" name="serie" type="text"
                                                value="'. $serie . '" 
                                         >
                                         <textarea id="descripcion" name="descripcion" cols="132" rows="6"
                                                   value = "'.$descripcion.'" 
                                                   readonly>'. $descripcion .'</textarea>
                        </td>
                                         </form>';
        $output .= '</tr>';
    }
?>
       <!DOCTYPE html>
       <html>
       <head>
         <title></title>
       </head>
       <body>
        <?php echo $output;?>
       </body>
       </html>
    
           