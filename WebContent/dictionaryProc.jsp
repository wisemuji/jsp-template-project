<%@page import="java.io.FileReader"%>
<%@page import="java.io.BufferedReader"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
            color: rgb(230,84,84);
        }
        .night{
            color: rgb(140, 140, 140);
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
        }
        .search {
		  width: 100%;
		  position: relative;
		  display: flex;
		}
		
		.searchTerm {
		  width: 100%;
		  border: 3px solid rgb(230,84,84);
		  border-right: none;
		  padding: 5px;
		  height: 20px;
		  border-radius: 5px 0 0 5px;
		  outline: none;
		  font-size: 12pt;
		  color: #323232;
		}
		
		.searchTerm:focus{
		  color: #323232;
		}
		
		.searchButton {
		  width: 40px;
		  height: 36px;
		  border: 1px solid rgb(230,84,84);
		  background: rgb(230,84,84);
		  text-align: center;
		  color: #fff;
		  border-radius: 0 5px 5px 0;
		  cursor: pointer;
		  font-size: 20px;
		}
		.search-wrap{
		  width: 30%;
		  margin: 0 auto;
		  text-align: center;
           padding: 50px 0px;
		}
		.spells-wrap{
			margin-left: 510px;
		}
    </style>
</head>
<body>
    <div class="wrap">
        <img src="images/background4.jpg" style='position:fixed;top:0px;left:0px;width:100%;height:100%;z-index:-1;'>
        <div class="title">
            <div><span class="magic">주문</span>에</div>
            <div>빠지고</div>
            <div>싶은<span class="night">밤</span></div>
        </div>
        <div class="button">
            <button class="round-button">View More</button>
        </div>
    </div>
    <div class="content-wrap">
	    <div class="search-wrap">
	    	<h1>주문을 검색해보세요.</h1>
	        <div class="search">
	            <input type="text" class="searchTerm" placeholder="무슨 주문을 검색하시겠어요?">
	            <button type="submit" class="searchButton">
	                <i class="fa fa-search"></i>
	            </button>
	        </div>
	    </div>
	    <div class="spells-wrap">
        <%
	request.setCharacterEncoding("utf-8");
	
	%>
	<%
		BufferedReader reader = null;
	try{
		String filepath = application.getRealPath("/WEB-INF/spells/spells.txt");
		reader = new BufferedReader(new FileReader(filepath));
		boolean isOdd = true;
		while(true){
			String str = reader.readLine();
			if(str==null) break;
			if(isOdd) {
				out.println("<strong class='spell'>"+str+"</strong><br>");
				isOdd = false;
			}
			else {
				out.println(str+"<br><br>");
				isOdd = true;
			}
		}
		
	}
	catch(Exception e){
		e.printStackTrace();
	}
	finally {
		reader.close();
	}
	
	%>
	</div>
   </div>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
$(".round-button").click(function() {
    $('html,body').animate({
        scrollTop: $(".content-wrap").offset().top},
        'slow');
});
$(".searchTerm").keyup(function(key) {
    if(key.keyCode == 13){//키가 13이면 실행 (엔터는 13)
    	searchSpell();
    }
});
$(".searchButton").click(function(){
	searchSpell();
})
function searchSpell(){
	$( '.spell' ).css( 'color', 'black' );
    var k = $('.searchTerm').val();
    console.log(k);
    if(k!="")
      $( '.spell:contains("'+ k +'")' ).css( 'color', 'red' );
    else 
    	alert("찾으시는 주문이 없습니다.");
    changeFocus();
}
function changeFocus() {
  $('html, body').animate({
    scrollTop: $('strong[style*="color: red"]').offset().top
  }, 'slow');
}
</script>

</body>
</html>