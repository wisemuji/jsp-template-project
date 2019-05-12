<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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
        .content-wrap{
            margin-top: 310px;
            background-color: #f3f3f7;
            
            padding-bottom: 35px;
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
    
    <div id="map">
    </div>
    
    <script>
        window.onload = initMap;
        function initMap() {
        var map = new google.maps.Map(document.getElementById('map'), {
            zoom: 5,
            center: {lat: 51.3042812, lng: -0.794651}
        });

        marker = new google.maps.Marker({
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