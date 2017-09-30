<?php include "header.php";
      include "config.php";
 ?>
<!DOCTYPE html>
<html>
  <body class="container-fluid">
    <a href="homepage.php">Back</a>&nbsp;
    <a href="index.php">Log Out</a>
    <main class="row">
      <div class="col-md-12 text-center">
        <form class="form" method="post">
          <div class="row">
            <div class="col-sm-8 col-xs-8">
                  <input  class="form-control" list="students" name="student" required placeholder="Search student here">
                  <datalist id="students">
                  <?php
                    if($conn){
                      $q = "SELECT * FROM student";
                      $result = mysqli_query($conn,$q);

                      if (mysqli_num_rows($result) > 0) {
                        // output data of each row
                        while($row = mysqli_fetch_assoc($result)) {
                            echo "<option value='".$row["sid"]."'>".$row["name"]."</option>";
                        }
                      } else {
                        echo "0 results";
                      }
                    }
                  ?>
                  </datalist>
            </div>
            <div class="col-sm-2 col-xs-2">
              <button class="btn btn-warning" type="submit" name="button">Search</button>
            </div>
          </div>
        </form>
      </div>
      <div class="text-center col-md-10" style="height:500px;"  id="myDiv"></div>
      <?php
        if(isset($_POST["button"])){
          $sid = $_POST["student"];
          $nameQ = "SELECT * FROM student WHERE sid = '".$sid."'";
          $resName = mysqli_query($conn,$nameQ);
          $rowName = mysqli_fetch_assoc($resName);
          $name = $rowName["name"];

          $score = [0,0,0,0];
          $result = array();
          if($conn){
            $query1 = "SELECT * FROM baseline WHERE sid = '".$sid."'";
            //echo $query1;
            $result[0] = mysqli_query($conn,$query1);


          $query2 = "SELECT * FROM midline WHERE sid = '".$sid."'";
          $result[1] = mysqli_query($conn,$query2);

          $query3 = "SELECT * FROM continuous WHERE sid = '".$sid."'";
          $result[2] = mysqli_query($conn,$query3);

          $query4 = "SELECT * FROM endline WHERE sid = '".$sid."'";
          $result[3] = mysqli_query($conn,$query4);

          if (mysqli_num_rows($result[0]) > 0 && mysqli_num_rows($result[1]) > 0 && mysqli_num_rows($result[2]) > 0 && mysqli_num_rows($result[3]) > 0) {
            // output data of each row
            for($j = 0; $j < 4; $j++){
              while($row = mysqli_fetch_assoc($result[$j])) {
                $total = 0;
                for($i = 1; $i <= 10; $i++){
                  $c = "c".$i;
                  if($row[$c] != null){
                    $total += $row[$c];
                  }
                }
                $score[$j] = $total/500 * 100;
                //echo "<br>".$score[$j]."</br>";
              }
            }

          }
          } else {
            echo "0 results";
          }?>
<script type="text/javascript">
var trace1 = {
x: ["Baseline","Midline","Continuous","Endline"],
y: [<?php echo $score[0]?>,<?php echo $score[1]?>,<?php echo $score[2]?>,<?php echo $score[3]?>],
mode: 'lines+markers',
  name: 'Student Ocerall Score',
  text: ['Baseline Score','Midline Score','Continuous Score','Endline Score'],
  marker: {
    color: 'rgb(164, 194, 244)',
    size: 12,
    line: {
      color: 'white',
      width: 0.5
    }
  },
  type: 'scatter'
};
var data = [trace1];
var layout = {
  title: '<?php echo $name ?> Overall score analysis',
  xaxis: {
    title: 'Exams',
    showgrid: true,
    zeroline: false
  },
  yaxis: {
    title: 'Score in %',
    showline: true
  }
};

Plotly.newPlot('myDiv', data, layout);
</script>
          <?php
}?>
    </main>
  </body>
</html>
