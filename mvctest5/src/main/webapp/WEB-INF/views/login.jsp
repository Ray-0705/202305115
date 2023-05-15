<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%String UserNameCheck="${username}"; %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員登入頁面</title>
    	
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/MemberWebSetting.css" type="text/css">
   <link rel="stylesheet" href="${pageContext.request.contextPath}/css/Login.css" type="text/css">
   <!-- jQuery v1.9.1 -->
   <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
   <!-- toastr v2.1.4 -->
   <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.css" rel="stylesheet"/>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.js"></script>
    
    <style>
        #account:hover,
        #passWord:hover {
        background-color: pink;
        }
    </style>
</head>

<body onload="memberStatus()">
   <header>
        <div class="logo">
            <a href="<c:url value='/'/>"><img src="${pageContext.request.contextPath}/images/logoo.png" alt="公司LOGO"></a>       
        </div>
       <%--  <form  action="/mvctest2/search" method="GET">
            <div class="search_in">
                <input class="search_input" type="text" name="keyword" placeholder="搜尋比價  請輸入關鍵字">
                <button type="submit" class="search_btn" id="searchbtn"></button>
            </div>
        </form>

        <div class="user">
            <a href="" id="mf">
                <div class="my_favorite">
                    <img id="member_img" src="${pageContext.request.contextPath}/images/love.png">
                    <span class="mffont">我的最愛</span>
                </div>
            </a>
        </div>
        
        <div class="user">        	
            <button id="member_btn" onclick="">
            	<a href="<c:url value='memberShipCenter'/>" style="text-decoration: none; color: #000;">
                <div class="member_item">
                    <img id="member_img-1" src="${pageContext.request.contextPath}/images/mem 2.png">
                    <span class="mffont" id="member"></span>                               
                </div>
                </a>
            </button>            
        </div> --%>
         
    </header>
    
    <hr>
    <div id="bc" style="position: absolute;
    width: 100%;
    height: 600px;
    background-color:rgb(236, 236, 236);">
    <h1 style="display: flex;
    justify-content: center;
    align-items: center; ">登入您的帳號</h1>
    <form method='POST' action="loginCheck" >
        <fieldset>
            <div class="mem">
            	<label style="font-size: 20px; color: orange;">會員帳號:</label>
            	<input type="text1" placeholder="輸入帳號" id="account" name="account"><br />
            </div>
            <div class="mem">
            	<label style="font-size: 20px; color: orange;">會員密碼:</label>
            	<input type="password" placeholder="輸入密碼" id="passWord" name="passWord"><br />
            </div>
            <div class="mem1">
            	<input type="submit" value="登入" class="button"><br />
            </div>
            <div class="mem1">
            	<button id="create"><a href="" style="text-decoration: none; color: blue" target="_blank">忘記密碼?</a></button>
            <button id="create"><a href="<c:url value='/memberCreate'/>"  style="text-decoration: none; color: blue">註冊新會員</a></button>
            </div>
        </fieldset>
    </form>
    </div>
<!-- 彈出帳號申請成功提醒 -->   
	<script>
		
		if (UserNameCheck = "${username}") {
			document.getElementById("member").innerText = "歡迎回來："+"${username}" ;
		}else {
			document.getElementById("member").innerText = "登入/註冊" ;
		}
	</script>
	<script>
	function memberStatus() {
		if ("${alert}"=="createSuccess") {
			toastr.options.timeOut = 3000; 
	        toastr.info('會員申請成功');			
		};
	}	
	</script>
</body>

</html>