<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/home.css">
    <title>良心比價網-商品頁面</title>
</head>

<body>
    <header>
        <div class="logo">
            <a href="<c:url value='/'/>"><img src="${pageContext.request.contextPath}/images/logoo.png" alt="公司LOGO"></a>
        
        </div>
        <form  action="/mvctest2/search" method="GET">
            <div class="search_in">
                <input class="search_input" type="text" name="keyword" placeholder="搜尋比價  請輸入關鍵字">
                <button type="submit" class="search_btn" id="searchbtn" ></button>
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

    <ul id="showsearch" >
            <div class="boxstyle">
                <span class="showbox">
                    <a href="">
                        <img src="${main.img}" width="300" height="300">
                    </a>
                </span>
                <li type="none" class="searchbox">
                    <div>
                        <a href="${main.url}" style="text-decoration: none;" target="_blank">
                            <div class="button01">
                                <img src="${main.sourceimg}" width="100%" height="100%">
                            </div>
                        </a>
                    </div>
                    <div class="showbox-1">
                        <a href="${main.url}" class="itemname" target="_blank">
                            <span>${main.name}</span>
                        </a>
                    </div>    
                    <div class="showbox-2">
                        <span class="price-1">$ ${main.price}</span>
                    </div>
                    <div class="cp">
                        <a href="${main.url}" class="compare" target="_blank">
                            <span>前往購買</span>
                        </a>
                        <div href="" class="addlove">
                            <button onclick="" class="addbtn1">加入我的最愛</button> 
                        </div>
                    </div>       
                </li>
            </div>
        </ul>
       <div class="bottom"> 
	    <div id="same">
	        <h2>同款商品</h2>
	    </div>
    <c:forEach var="item" items='${items}' varStatus="status">
    <div class="centerdown">
            <li class="centerdown01">
                <a href="" style="text-decoration: none;" target="_blank" >
                    <div class="centerdownleo">${status.index + 1}</div>
                </a>
                <div class="line"></div>
                <div class="button">
                        <div class="buttonpc">
                            <img src="${item.img}" width="90%" height="120px">
                        </div>
                </div>
                <div class="line"></div>
                <a href="${item.url}" style="text-decoration: none;" target="_blank">
                    <div class="name">
                        <span style="margin: 5%;">${item.name}</span>
                    </div>
                </a>
                <div class="line"></div>
                <div>
                        <div class="button01">
                            <img src="${item.sourceimg}" width="100%" height="100%">
                        </div>
                </div>
                <div class="line"></div>
                <div class="mn">
                    <a href="${item.url}" style="text-decoration: none;" target="_blank">
                        <div class="money02">$ ${item.price}</div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="last01">
                    <div class="pch">
                        <a href="${item.url}" style="text-decoration: none;" target="_blank">
                            <div class="buttongo">前往購買</div>
                        </a>
                    </div>
                    <div class="pch">
                        <div href="" class="addl">
                            <button onclick="" class="addbtn">加入我的最愛</button> 
                        </div>
                    </div>
                </div>
            	</li>
            </div>
           </c:forEach>
           </div>
	</div>
	
	<script>
	if (UserNameCheck = "${username}") {
		document.getElementById("member").innerText = "歡迎回來："+"${username}" ;
	}else {
		document.getElementById("member").innerText = "登入/註冊" ;
	}
	</script>
</body>

</html>