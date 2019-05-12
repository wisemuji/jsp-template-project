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
            padding: 135px 0px;
        }
        .search {
		  width: 100%;
		  position: relative;
		  display: flex;
		}
		
		.searchTerm {
		  width: 100%;
		  border: 3px solid rgb(230,84,84);
		  padding: 5px;
		  height: 20px;
		  border-radius: 5px;
		  outline: none;
		  font-size: 12pt;
		  color: #323232;
		  margin: 0px 5px;
		}
		
		.searchTerm:focus{
		  color: #323232;
		}
		
		.searchButton {
		  height: 36px;
		  border: 1px solid rgb(230,84,84);
		  background: rgb(230,84,84);
		  text-align: center;
		  color: #fff;
		  border-radius: 5px;
		  cursor: pointer;
		  font-size: 15px;
		  margin-top:20px;
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
        <img src="images/background5.jpg" style='position:fixed;top:0px;left:0px;width:100%;height:100%;z-index:-1;'>
        <div class="title">
            <div><span class="magic">주문</span>을</div>
            <div>만들고</div>
            <div>싶은<span class="night">너</span></div>
        </div>
        <div class="button">
            <button class="round-button">View More</button>
        </div>
    </div>
    <div class="content-wrap">
	    <div class="search-wrap">
	    	<h1>새로운 주문을 만들어 보세요.</h1>
	    	<h3>새로 만들고 싶은 주문의 이름과 효력을 입력하고 확인 버튼을 누르면 주문이 새로 추가됩니다.</h3>
	    	<form action="createSpellProc.jsp" method="POST">
		        <div class="search">
		            <input type="text" class="searchTerm" placeholder="주문의 이름" name="name">
		            <input type="text" class="searchTerm" placeholder="주문의 효력" name="content">
		        </div>
	            <button type="submit" class="searchButton">
	                	주문 만들기
	            </button>
            </form>
	    </div>
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
</script>
</html>