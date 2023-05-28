<!DOCTYPE html>
<html>
<head>
	<title>maribelajarcoding.com</title>
	<?php 
	 mysql_connect("localhost","root","");
	 mysql_select_db("akademik");
	?>
</head>
<body>
	<h2>maribelajarcoding.com</h2>
<table>	
	<form>
		<tr>
			<td>Kecamatan</td>
			<td>
				<select id="nim" name="nim" onchange="changeValueNIM(this.value)">
					<option disabled="" selected="">Pilih</option>
					<?php 
					  $sql=mysql_query("SELECT * FROM mahasiswa");
					  $jsArray = "var prdName = new Array();\n";
					  while ($data=mysql_fetch_array($sql)) {
					   echo '<option value="'.$data['nim'].'">'.$data['nim'].'</option> ';
					   $jsArray .= "prdName['" . $data['nim'] . "'] = {nama:'" . addslashes($data['nama']) . "'};\n";
					  }
					 ?>
				</select>
			</td>
		</tr>
		<tr>
			<td>Kelurahan</td>
			<td>
				<select id="idjurusan" name="idjurusan" onchange="changeValueJurusan(this.value)">
					<option disabled="" selected="">Pilih</option>
					<?php 
					  $sql=mysql_query("SELECT * FROM jurusan");
					  $jsArrayJurusan = "var prdJurusan = new Array();\n";
					  while ($data=mysql_fetch_array($sql)) {
					 
					   echo '<option value="'.$data['id_jurusan'].'">'.$data['id_jurusan'].'</option> ';
					   $jsArrayJurusan .= "prdJurusan['" . $data['id_jurusan'] . "'] = {jurusan:'" . addslashes($data['jurusan']) . "',quality:'".addslashes($data['quality'])."'};\n";
					   }
					 ?>
				</select>
			</td>
		</tr>
		<tr>
			<td>Status</td>
			<td><input type="text" name="nama" id="nama"></td>
		</tr>
		<tr>
			<td>Reason</td>
			<td><input type="text" name="jurusan" id="jurusan"></td>
		</tr>
		<tr>
			<td>Quality</td>
			<td><input type="text" name="quality" id="quality"></td>
		</tr>
	</form>
</table>
  <script type="text/javascript">    
    <?php echo $jsArray; ?>  
    function changeValueNIM(x){  
    document.getElementById('nama').value = prdName[x].nama;   
    };  
    <?php echo $jsArrayJurusan; ?>  
    function changeValueJurusan(x){  
    document.getElementById('jurusan').value = prdJurusan[x].jurusan;
	document.getElementById('quality').value = prdJurusan[x].quality; 	
    };
    </script> 
</body>
</html>