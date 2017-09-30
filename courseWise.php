<?php include "header.php";
      include "config.php";
 ?>
<!DOCTYPE html>
<html>
  <body class="container-fluid">
    <main class="row">
      <div class="text-center col-md-10" style="height:500px;"  id="myDiv"></div>
      <?php
        if($conn){
          $arr = ["baseline","midline","continuous","endline"];
          for($i = 0; $i < 4; $i++){
            for($j = 1; $j <= 10; $j++){
              $c = "c".$j;
              $q = "SELECT * FROM ".$arr[$i]." WHERE ".$c." != NULL";
            }
          }
        }
      ?>
<script type="text/javascript">
var trace1 = {
  x: ['Baseline', 'Midline', 'Continuous','Endline'],
  y: [20, 14, 23],
  name: 'SF Zoo',
  type: 'bar'
};

var trace2 = {
  x: ['giraffes', 'orangutans', 'monkeys'],
  y: [12, 18, 29],
  name: 'LA Zoo',
  type: 'bar'
};

var trace3 = {

}

var data = [trace1, trace2];

var layout = {barmode: 'group'};

Plotly.newPlot('myDiv', data, layout);
</script>
    </main>
  </body>
</html>
