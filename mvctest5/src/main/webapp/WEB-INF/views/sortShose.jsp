<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/sortShose7.css">
    <title>分類-良心比價網</title>

</head>
<body>
	<c:set var ='pages' value='${sum % pageSize == 0? sum/pageSize : (sum-sum % pageSize)/pageSize+1}'/>
	<c:set var ='next' value='${page >= pages? page : page+1}'/>
	<c:set var ='prev' value='${page -1 ==0? 1 : page - 1}'/>
    <header>
        <div class="logo">
            <a href="<c:url value='/'/>"><img src="${pageContext.request.contextPath}/images/logoo.png" alt="公司LOGO"></a>
        </div>
        <form  action="/mvctest2/search" method="GET">
            <div class="search_in">
                <input class="search_input" type="text" name="keyword" value="${param.keyword}" placeholder="搜尋比價  請輸入關鍵字">
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
        </div>
    </header>
    <hr>
    <div id="bc"></div>
    <aside>
         <div id="category">
                <ul class="drop-down-menu">
                    <li>
                        <h3 style="text-align: center;">商品分類</h3>
                        <ul>
                            <li class="list">
                                <a href="<c:url value='/sortShose'/>" class="itemA">
                                
                                    <div class="item">鞋 子</div>
                                </a>
                            </li>
                            <li>
                                <a href="" class="itemA">
                                    <div class="item">上 衣</div>
                                </a>
                            </li>
                            <li>
                                <a href="" class="itemA">
                                    <div class="item">褲 子</div>
                                </a>
                            </li>
                            <li>
                                <a href="" class="itemA">
                                    <div class="item">襪 子</div>
                                </a>
                            </li>
                            <li>
                                <a href="" class="itemA">
                                    <div class="item">運動內衣</div>
                                </a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
    </aside>
    <main>
        <div class="sort">
            <h3>分類-鞋子</h3>
            <span class="sort-q">${sum}件商品</span>
        </div>
       
        <div class="item-list">
        <c:forEach var="item" items='${items}' varStatus="status">

            <div class="item-content">
                <div class="numbox">
                    <div class="num">${status.index + 1}</div>
                </div>
                <div class="info">
                    <a class="info-a" href="${item.url}" target="_blank">
                        <div class="image">
                            <img class="imgg" src="${item.img}">
                        </div>
                        <div class="name">
                            <h3 style="font-weight:400;">${item.name}</h3>
                        </div>
                        <div class="price">
                            <span class="price-1">$ ${item.price}</span>
                            <span style="color: gray;">起</span>
                        </div>
                    </a>
                </div>
            </div>
            </c:forEach>


        </div>
        <div class="page" id="pageSwitch">
            <a href="<c:url value='/sortShose?page=${prev}'/>" class="pageswitch" >上一頁</a>
            <p>第${page}頁</p>
			<a href="<c:url value='/sortShose?page=${next}'/>" class="pageswitch" >下一頁</a>
        	</div>
    </main>
    
       	<script>
	if (UserNameCheck = "${username}") {
		document.getElementById("member").innerText = "歡迎回來："+"${username}" ;
	}else {
		document.getElementById("member").innerText = "登入/註冊" ;
	}
	</script>
   
    </body>
 </html>
