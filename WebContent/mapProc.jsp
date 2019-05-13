<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마법에 빠지고 싶은 밤</title>
<script async defer
  src="https://maps.googleapis.com/maps/api/js?key=AIzaSyC-AmhIy9r8DDmCs6gApucOEHaWOPeyKzE&callback=initMap">
</script>
<style>
        .bg {
            /* The image used */
            background-image: url("img_girl.jpg");
            
            /* Full height */
            height: 100%; 
            
            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
        .title{
            margin: 0 auto;
            width: 200px;
            text-align: center;
            font-size: 35pt;
            padding: 50px;
            font-weight: 600;
            color: aliceblue;
            letter-spacing: 11pt;
            line-height: 49pt;
        }
        .magic{
            color: rgb(148, 223, 255);
        }
        .night{
            color: rgb(214, 244, 184);
        }
        .button{
            margin: 0 auto;
            width: 190px;
        }
        .round-button{
            border-radius: 50px;
            height: 55px;
            width: 180px;
            font-size: 17pt;
            color: aliceblue;
            background-color: rgba(0,0,0,0);
            border: 3px solid aliceblue;
        }
        .round-button:hover{
        	cursor: pointer;
            background-color: rgba(255,255,255,0.2);
        }
        .content-wrap{
            margin-top: 310px;
            background-color: #f3f3f7;
            padding: 50px 310px;
        }
        #map{
        	height: 100vh;
        	
        }
    </style>
</head>
<body>
    <div class="wrap">
        <img src="images/background6.jpg" style='position:fixed;top:0px;left:0px;width:100%;height:100%;z-index:-1;'>
        <div class="title">
            <div><span class="magic">어디</span>로</div>
            <div>떠나고</div>
            <div>싶은<span class="night">날</span></div>
        </div>
        <div class="button">
            <button class="round-button">View More</button>
        </div>
    </div>
    <div class="content-wrap">
   	<div class="info">
   		<h1>호그와트 마법학교</h1>
   		<h3>호그와트는 영국의 유명한 마법사 '해리 포터'가 다녔던 학교로 이 시대의 가장 뛰어난 실력을 가진 마법사들을 양성하는 마법학교이다. 약 600명 정도의 학생이 재학중이다.</h3>
   	</div>
    <div id="map">
    </div>
    
    <script>
        window.onload = initMap;
        function initMap() {
	        let map = new google.maps.Map(document.getElementById('map'), {
	            zoom: 5,
	            center: {lat: 51.3042812, lng: -0.794651}
	        });
	
	        let marker = new google.maps.Marker({
	            map: map,
	            draggable: false,
	            label: 'Hogwarts School Of Witchcraft And Wizardry',
	            animation: google.maps.Animation.DROP,
	            position: {lat: 51.3042812, lng: -0.794651}
	        });
	        marker.addListener('click', toggleBounce);
        }

        function toggleBounce() {
	        if (marker.getAnimation() !== null) {
	            marker.setAnimation(null);
	        } else {
	            marker.setAnimation(google.maps.Animation.BOUNCE);
	        }
        }
    </script>
    </div>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
$(".round-button").click(function() {
    $('html,body').animate({
        scrollTop: $(".content-wrap").offset().top},
        'slow');
});
</script>

</body>
</html>