<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Game List</title>
  </head>
  <body>
    <table border="1">
      <thead>
        <tr>
          <th>タイトル</th>
          <th>発売日</th>
        </tr>
      </thead>
    <tbody>
    <?php 
      include('./game_data.php')
    ?>
    </tbody>
  </table>
</html>