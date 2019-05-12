<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
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
            color: rgb(253, 237, 9);
        }
        .night{
            color: rgb(248, 217, 175);
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
            background-color: #d3d3d7;
            padding-bottom: 35px;
            padding-top: 20px;
        }
        .products{
            display: flex;
            justify-content: center;
        }
        .products img{
            background-color: white;
            padding: 20px 0px;
            height: 150px;
            margin: 20px 14px;
            box-shadow: rgba(0, 0, 0, 0.1) 0px 15px 30px, rgba(0, 0, 0, 0.11) 0px 10px 20px;
        }
        .products span{
            background-color: #f3f4f3;
            padding: 20px;
            width: 110px;
            margin: 0px 14px;
            text-align: center;
            color: #323332;
            font-weight: bold;
            font-size: 11.5pt;
            border-radius: 10px;
            box-shadow: rgba(0, 0, 0, 0.1) 0px 15px 30px, rgba(0, 0, 0, 0.11) 0px 10px 20px;
        }
    	.shopping-title{
    		margin-left: 150px;
    	}
        .buttons{
            margin-left: 150px;
        }
        .buttons span{
            display: inline-block;
            font-size: 12pt;
            padding: 10px;
            font-weight: bold;
            border-radius: 10px;
        }
        .buttons a{
            text-decoration: none;
            color: #323332;
        }
        .buttons span:hover{
            background-color: #afafaf;
        }
    </style>
	<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	String taste = "";
	taste = request.getParameter("taste");
	
	%>
    <div class="wrap">
        <img src="images/background2.jpg" style='position:fixed;top:0px;left:0px;width:100%;height:100%;z-index:-1;'>
        <div class="title">
            <div><span class="magic">쇼핑</span>에</div>
            <div>빠지고</div>
            <div>싶은<span class="night">날</span></div>
        </div>
        <div class="button">
            <button class="round-button">View More</button>
        </div>
    </div>
    <div class="content-wrap">
        <h1 class="shopping-title" id="shop">판매중인 물약</h1>
        <div class="buttons">
            <span class="mild"><a href='shopping.jsp?taste=mild'>mild taste</a></span>
            <span class="strong"><a href='shopping.jsp?taste=strong'>strong taste</a></span>
        </div>
        <% if(taste!=null && taste.equals("strong")){ %>
	        <div class="products">
	            <img src="images/potions/purple.png">
	            <img src="images/potions/pink.png">
	            <img src="images/potions/darkblue.png">
	            <img src="images/potions/yellow.png">
	        </div>
	        <div class="products">
	            <span>보라맛 / 3.5$</span>
	            <span>상큼맛 / 3.5$</span>
	            <span>바다맛 / 3.5$</span>
	            <span>레몬맛 / 3.5$</span>
	        </div>
	        <div class="products">
	            <img src="images/potions/red.png">
	            <img src="images/potions/brown.png">
	            <img src="images/potions/black.png">
	            <img src="images/potions/darkgreen.png">
	        </div>
	        <div class="products">
	            <span>비트맛 / 3.5$</span>
	            <span>초코맛 / 3.5$</span>
	            <span>먹물맛 / 3.5$</span>
	            <span>늪지맛 / 3.5$</span>
	        </div>
	        <script>
	        	$('html,body').animate({
	            	scrollTop: $(".content-wrap").offset().top},
	            'slow');
	        	$(".strong").css("background-color", "#afafaf")
	        </script>
        <% } else {%>
        <div class="products">
            <img src="images/potions/mint.png">
            <img src="images/potions/coral.png">
            <img src="images/potions/green.png">
            <img src="images/potions/indipink.png">
        </div>
        <div class="products">
            <span>민트맛 / 3.5$</span>
            <span>복숭아맛 / 3.5$</span>
            <span>녹즙맛 / 3.5$</span>
            <span>슬라임맛 / 3.5$</span>
        </div>
        <div class="products">
            <img src="images/potions/orange.png">
            <img src="images/potions/white.png">
            <img src="images/potions/skyblue.png">
            <img src="images/potions/blue.png">
        </div>
        <div class="products">
            <span>감귤맛 / 3.5$</span>
            <span>우유맛 / 3.5$</span>
            <span>풍선껌맛 / 3.5$</span>
            <span>하늘맛 / 3.5$</span>
        </div>
        <script>
        <%if(taste!=null){%>
		   	$('html,body').animate({
		       	scrollTop: $(".content-wrap").offset().top},
		       'slow');
        <%}%>
        	$(".mild").css("background-color", "#afafaf")
        </script>
       <% } %>
    </div>
<script>
$(".round-button").click(function() {
    $('html,body').animate({
        scrollTop: $(".content-wrap").offset().top},
        'slow');
});
</script>

</body>
</html>