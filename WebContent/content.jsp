<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마법에 빠지고 싶은 밤</title>
<style>
            @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 100;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Thin.otf) format('opentype');}
            @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 300;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Light.otf) format('opentype');}
            @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 400;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Regular.otf) format('opentype');}
            @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 500;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Medium.otf) format('opentype');}            
            @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 700;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Bold.otf) format('opentype');}
            @font-face {font-family: 'Noto Sans KR';font-style: normal;font-weight: 900;src: url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.woff2) format('woff2'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.woff) format('woff'),url(//fonts.gstatic.com/ea/notosanskr/v2/NotoSansKR-Black.otf) format('opentype');}

        body, html {
            font-family: "Noto Sans KR", sans-serif;
            font-weight: 300;
            height: 100%;
            margin: 0;
        }
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
            color: rgb(66,152,211);
        }
        .night{
            color: rgb(114,114,198);
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
            margin: 310px 0px 360px;
        }
        .posters{
            display: flex;
            justify-content: center;
        }
        .posters img{
            max-height: 510px;
            margin: 20px 14px;
    box-shadow: rgba(0, 0, 0, 0.1) 0px 15px 30px, rgba(0, 0, 0, 0.11) 0px 10px 20px;
    	}
    	.event-title{
    		margin: 0 auto;
    		width: 950px;
    	}
    	.info{
    		margin: 0 auto;
    		width: 550px;
            height: 64px;
            border: 3px solid aliceblue;
            color: aliceblue;
            padding: 25px;
            font-size: 15pt;
    	}
    </style>
</head>
<body>
    <div class="wrap">
        <img src="images/background3.jpg" style='position:fixed;top:0px;left:0px;min-width:100%;min-height:100%;z-index:-1;'>
        <div class="title">
            <div><span class="magic">마법</span>에</div>
            <div>빠지고</div>
            <div>싶은<span class="night">밤</span></div>
        </div>
        <div class="button">
            <button class="round-button">View More</button>
        </div>
    </div>
    <div class="content-wrap">
        <div class="info">마법에 빠지고 싶은 밤은 해리포터의 마법 세계관에서 영감을 받아 마법사와 마녀가 실제로 존재한다면 어떨까 가정한 웹사이트입니다.</div>
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