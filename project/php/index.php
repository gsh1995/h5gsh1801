<?php
header('content-type:text/html;charset=utf-8');
$conn=@mysql_connect('localhost','root','');
	if(!$conn){
		die('数据库连接失败'.mysql_error());
	}
	mysql_select_db('huaweishop');
	mysql_query('SET NAMES UTF8');
	
	
	
	
	
	$query='select * from dannav';
	$result=mysql_query($query);
	$arr=array();
	for($i=0;$i<mysql_num_rows($result);$i++){
		$arr[$i]=mysql_fetch_array($result,MYSQL_ASSOC);
	}

	
	
	$query1='select * from hotimg';
	$result1=mysql_query($query1);
	$arr1=array();
	for($i=0;$i<mysql_num_rows($result1);$i++){
		$arr1[$i]=mysql_fetch_array($result1,MYSQL_ASSOC);
	}
	
	$query2='select * from hotnav';
	$result2=mysql_query($query2);
	$arr2=array();
	for($i=0;$i<mysql_num_rows($result2);$i++){
		$arr2[$i]=mysql_fetch_array($result2,MYSQL_ASSOC);
	}
	
	$query3='select * from boutique';
	$result3=mysql_query($query3);
	$arr3=array();
	for($i=0;$i<mysql_num_rows($result3);$i++){
		$arr3[$i]=mysql_fetch_array($result3,MYSQL_ASSOC);
	}
	
	$query4='select * from adver';
	$result4=mysql_query($query4);
	$arr4=array();
	for($i=0;$i<mysql_num_rows($result4);$i++){
		$arr4[$i]=mysql_fetch_array($result4,MYSQL_ASSOC);
	}
	
	$query5='select * from onephone';
	$result5=mysql_query($query5);
	$arr5=array();
	for($i=0;$i<mysql_num_rows($result5);$i++){
		$arr5[$i]=mysql_fetch_array($result5,MYSQL_ASSOC);
	}
	
	$query6='select * from phone';
	$result6=mysql_query($query6);
	$arr6=array();
	for($i=0;$i<mysql_num_rows($result6);$i++){
		$arr6[$i]=mysql_fetch_array($result6,MYSQL_ASSOC);
	}
	
	
	$query8='select * from computer';
	$result8=mysql_query($query8);
	$arr7=array();
	for($i=0;$i<mysql_num_rows($result8);$i++){
		$arr8[$i]=mysql_fetch_array($result8,MYSQL_ASSOC);
	}
	
	$query9='select * from onecomputer';
	$result9=mysql_query($query9);
	$arr9=array();
	for($i=0;$i<mysql_num_rows($result9);$i++){
		$arr9[$i]=mysql_fetch_array($result9,MYSQL_ASSOC);
	}
	
	$query10='select * from oneipad';
	$result10=mysql_query($query10);
	$arr10=array();
	for($i=0;$i<mysql_num_rows($result10);$i++){
		$arr10[$i]=mysql_fetch_array($result10,MYSQL_ASSOC);
	}
	
	$query11='select * from ipad';
	$result11=mysql_query($query11);
	$arr11=array();
	for($i=0;$i<mysql_num_rows($result11);$i++){
		$arr11[$i]=mysql_fetch_array($result11,MYSQL_ASSOC);
	}
	
	$query12='select * from oneai';
	$result12=mysql_query($query12);
	$arr12=array();
	for($i=0;$i<mysql_num_rows($result12);$i++){
		$arr12[$i]=mysql_fetch_array($result12,MYSQL_ASSOC);
	}
	
	$query13='select * from ai';
	$result13=mysql_query($query13);
	$arr13=array();
	for($i=0;$i<mysql_num_rows($result13);$i++){
		$arr13[$i]=mysql_fetch_array($result13,MYSQL_ASSOC);
	}
	
	$query14='select * from oneapp';
	$result14=mysql_query($query14);
	$arr14=array();
	for($i=0;$i<mysql_num_rows($result14);$i++){
		$arr14[$i]=mysql_fetch_array($result14,MYSQL_ASSOC);
	}
	
	$query15='select * from app';
	$result15=mysql_query($query15);
	$arr15=array();
	for($i=0;$i<mysql_num_rows($result15);$i++){
		$arr15[$i]=mysql_fetch_array($result15,MYSQL_ASSOC);
	}
	
	$query16='select * from boutique2';
	$result16=mysql_query($query16);
	$arr16=array();
	for($i=0;$i<mysql_num_rows($result16);$i++){
		$arr16[$i]=mysql_fetch_array($result16,MYSQL_ASSOC);
	}
	
	$query18='select * from oneparts';
	$result18=mysql_query($query18);
	$arr17=array();
	for($i=0;$i<mysql_num_rows($result18);$i++){
		$arr18[$i]=mysql_fetch_array($result18,MYSQL_ASSOC);
	}
	
	$query19='select * from parts';
	$result19=mysql_query($query19);
	$arr19=array();
	for($i=0;$i<mysql_num_rows($result19);$i++){
		$arr19[$i]=mysql_fetch_array($result19,MYSQL_ASSOC);
	}
	
	$query20='select * from onebrand';
	$result20=mysql_query($query20);
	$arr20=array();
	for($i=0;$i<mysql_num_rows($result20);$i++){
		$arr20[$i]=mysql_fetch_array($result20,MYSQL_ASSOC);
	}
	
	$query21='select * from brand';
	$result21=mysql_query($query21);
	$arr21=array();
	for($i=0;$i<mysql_num_rows($result21);$i++){
		$arr21[$i]=mysql_fetch_array($result21,MYSQL_ASSOC);
	}
	
	
    $query22='select * from boutique3';
	$result22=mysql_query($query22);
	$arr22=array();
	for($i=0;$i<mysql_num_rows($result22);$i++){
		$arr22[$i]=mysql_fetch_array($result22,MYSQL_ASSOC);
	}
	
	$query23='select * from boutique4';
	$result23=mysql_query($query23);
	$arr23=array();
	for($i=0;$i<mysql_num_rows($result23);$i++){
		$arr23[$i]=mysql_fetch_array($result23,MYSQL_ASSOC);
	}
	
	$query24='select * from footer';
	$result24=mysql_query($query24);
	$arr24=array();
	for($i=0;$i<mysql_num_rows($result24);$i++){
		$arr24[$i]=mysql_fetch_array($result24,MYSQL_ASSOC);
	}
	
	$query25='select * from navzi';
	$result25=mysql_query($query25);
	$arr25=array();
	for($i=0;$i<mysql_num_rows($result25);$i++){
		$arr25[$i]=mysql_fetch_array($result25,MYSQL_ASSOC);
	}
	
	$query26='select * from navimg';
	$result26=mysql_query($query26);
	$arr26=array();
	for($i=0;$i<mysql_num_rows($result26);$i++){
		$arr26[$i]=mysql_fetch_array($result26,MYSQL_ASSOC);
	}
	
	$query28='select * from navzi2';
	$result28=mysql_query($query28);
	$arr28=array();
	for($i=0;$i<mysql_num_rows($result28);$i++){
		$arr28[$i]=mysql_fetch_array($result28,MYSQL_ASSOC);
	}
	
	$query29='select * from navimg2';
	$result29=mysql_query($query29);
	$arr29=array();
	for($i=0;$i<mysql_num_rows($result29);$i++){
		$arr29[$i]=mysql_fetch_array($result29,MYSQL_ASSOC);
	}
	
	$query30='select * from navzi3';
	$result30=mysql_query($query30);
	$arr30=array();
	for($i=0;$i<mysql_num_rows($result30);$i++){
		$arr30[$i]=mysql_fetch_array($result30,MYSQL_ASSOC);
	}
	
	$query31='select * from navimg3';
	$result31=mysql_query($query31);
	$arr31=array();
	for($i=0;$i<mysql_num_rows($result31);$i++){
		$arr31[$i]=mysql_fetch_array($result31,MYSQL_ASSOC);
	}
	
	$query32='select * from navzi4';
	$result32=mysql_query($query32);
	$arr32=array();
	for($i=0;$i<mysql_num_rows($result32);$i++){
		$arr32[$i]=mysql_fetch_array($result32,MYSQL_ASSOC);
	}
	
	$query33='select * from navimg4';
	$result33=mysql_query($query33);
	$arr33=array();
	for($i=0;$i<mysql_num_rows($result33);$i++){
		$arr33[$i]=mysql_fetch_array($result33,MYSQL_ASSOC);
	}
	
	$query34='select * from navzi5';
	$result34=mysql_query($query34);
	$arr34=array();
	for($i=0;$i<mysql_num_rows($result34);$i++){
		$arr34[$i]=mysql_fetch_array($result34,MYSQL_ASSOC);
	}
	
	$query35='select * from navimg5';
	$result35=mysql_query($query35);
	$arr35=array();
	for($i=0;$i<mysql_num_rows($result35);$i++){
		$arr35[$i]=mysql_fetch_array($result35,MYSQL_ASSOC);
	}
	
	$query36='select * from navzi6';
	$result36=mysql_query($query36);
	$arr36=array();
	for($i=0;$i<mysql_num_rows($result36);$i++){
		$arr36[$i]=mysql_fetch_array($result36,MYSQL_ASSOC);
	}
	
	$query38='select * from navimg6';
	$result38=mysql_query($query38);
	$arr38=array();
	for($i=0;$i<mysql_num_rows($result38);$i++){
		$arr38[$i]=mysql_fetch_array($result38,MYSQL_ASSOC);
	}
	
	class data{
		
	}
	
	$d1=new data();
	
	$d1->data1=$arr;
	$d1->data2=$arr1;
	$d1->data3=$arr2;
	$d1->data4=$arr3;
	$d1->data5=$arr4;
	$d1->data6=$arr5;
	$d1->data7=$arr6;
	$d1->data9=$arr8;
	$d1->data10=$arr9;
	$d1->data11=$arr10;
	$d1->data12=$arr11;
	$d1->data13=$arr12;
	$d1->data14=$arr13;
    $d1->data15=$arr14;
    $d1->data16=$arr15;
    $d1->data17=$arr16;
    $d1->data19=$arr18;
    $d1->data20=$arr19;
    $d1->data21=$arr20;
    $d1->data22=$arr21;
    $d1->data23=$arr22;
    $d1->data24=$arr23;
    $d1->data25=$arr24;
    $d1->data26=$arr25;
    $d1->data27=$arr26;
    $d1->data29=$arr28;
    $d1->data30=$arr29;
    $d1->data31=$arr30;
    $d1->data32=$arr31;
    $d1->data33=$arr32;
    $d1->data34=$arr33;
    $d1->data35=$arr34;
    $d1->data36=$arr35;
    $d1->data37=$arr36;
    $d1->data39=$arr38;
    
	echo json_encode($d1);

  mysql_close($conn);	

?>