<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%
	//此項為確認連線者是否有通過帳號認證連進來 否則退回到登入頁面 ==> 4/16測試刷新功能暫時關掉 ==>4/17刷新功能完成故功能重新開啟
	response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		
	//下列敘述已在4/2由上項敘述替代並確認可行,但實際其運作原理可能還需再調查	
	if (session.getAttribute("id") == null){
		response.sendRedirect("login");
	}
	//out.println(session.getAttribute("account"));
%>
<%String UserNameCheck="${username}"; %>    
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>會員中心</title> 
    
     <!-- jQuery v1.9.1 -->
   	 <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
 	 <!-- toastr v2.1.4 -->
 	 <link href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.css" rel="stylesheet"  />
 	 <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/2.1.4/toastr.min.js"></script>   
	 
<%--     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/MemberWebSetting.css" type="text/css"> --%>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/MemberShipCenter1.css" type="text/css">
    <style>    	
    </style>
</head>
<!--修改中 要把資料庫內的登入的資料連動到前端 3/31已搞定  -->
<!-- 4/16完成會員中心會在連線進來時依照Login時所記錄的會員資料ID來做SELECT語法取出資料並藉此達到資料刷新 -->
		
<body onload="memberStatus()">
       <header>
        <div class="logo">
            <a href="<c:url value='/'/>"><img src="${pageContext.request.contextPath}/images/logoo.png" alt="公司LOGO"></a>

        </div>
        <form action="">
            <div class="search_in">
                <input id="search_input" type="text" placeholder="搜尋比價  請輸入關鍵字">
                <button type="submit" class="search_btn" id="searchbtn"></button>
            </div>

        </form>

        <div class="user">
            <a href="<c:url value='myFavorite'/>" id="mf">
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
        </div>
    </header>	
    <hr>
    	<div id="bc">
    		<form class="show" style="margin-top: 50px">
				<div class="ed">
					<button id="Edit"><a class="btn" href="<c:url value='/memberEdit'/>" >會員資料修改</a></button>
				</div>
				<div class="log">
					<button id="buttonPress"><a class="btn" href="<c:url value='/logout'/>" >登出</a></button>
				</div>			
			</form>
	<h1 style="margin-top: 50px">會員中心</h1>	
    	<div class="inf" style="border-radius: 20px; background-color: white; box-shadow: 3px 3px 3px 3px #888">
    		
    		<form>
	        <fieldset class="box">
	            <table>
	                <tr>
	                    <th>姓名:</th>
	                    <td>${username} </td>
	                </tr>
	            </table>
	        </fieldset>
		    </form>
		    <form>
		        <fieldset class="box">
		            <table>
		                <tr>
		                    <th>年齡:</th>
		                    <td>${age}</td>
		                </tr>
		            </table>
		        </fieldset>
		
		    </form>
		    <form>
		        <fieldset class="box">
		            <table>
		                <tr>
		                    <th>電話:</th>
		                    <td>0${tel}</td>
		                </tr>
		            </table>
		        </fieldset>
		
		    </form>
		    <form>
		        <fieldset class="box">
		            <table>
		                <tr>
		                    <th>手機:</th>
		                    <td>0${cellphone}</td>
		                </tr>
		            </table>
		        </fieldset>
		
		    </form>
		    <form>
		        <fieldset  class="box1">
		            <table>
		                <tr>
		                    <th>電子郵件:</th>
		                    <td>${email}</td>
		                </tr>
		            </table>
		        </fieldset>
		    </form>
		</div>		
	</div>
    
<!-- 彈出會員登入成功or會員修改成功 -->  
  	<script>
		if (UserNameCheck = "${username}") {
			document.getElementById("member").innerText = "歡迎回來："+"${username}" ;
		}else {
			document.getElementById("member").innerText = "登入/註冊" ;
		}
	</script>
	<script>
	function memberStatus() {		
		if ("${alert}"=="loginSuccess") {			
			toastr.options.timeOut = 3000; 
	        toastr.info('會員登入成功');
					
		}else if ("${alert}"=="editSuccess"){
			toastr.options.timeOut = 3000; 
	        toastr.info('會員修改成功');			
		}
	}	
	</script>
</body>

</html>