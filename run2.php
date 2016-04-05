<?php 
	//echo "test";
	//$output = shell_exec('/home/pi/Desktop/OpenShow.sh');
	//$output = shell_exec('whoami');
	//$command = escapeshellcmd('/home/pi/Desktop/OpenShow.py');
	//$output = shell_exec($command);
	//$output = exec('sudo python /home/pi/Desktop/OpenShow.py');

	$var2 = $_POST["action"];

	if ($var2 == "fwd"){
		//echo "Yep this would be a fwd <br>";
		$output = exec('sudo -u pi python /home/pi/temp/fwd.py');
	}
	elseif ($var2 == "stop"){
		//echo "Yep this would be a video";
		$output = exec('sudo -u pi python /home/pi/temp/stop.py');
	}
	elseif ($var2 == "bwd"){
		//echo "Yep this would be videos";
		$output = exec('sudo -u pi python /home/pi/temp/back.py');
	}
	elseif ($var2 == "stream"){
		//echo "Yep this would be a stream";
		$output = exec('sudo -u pi python /home/pi/temp/stream.sh');
	}

	//$output = exec('/home/pi/OpenShow.sh '.$var);
	echo $output;
	//$user = get_current_user();
	//echo $user;
	echo $var2;

	
?>


