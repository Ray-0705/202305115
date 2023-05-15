<%@ page language="java" contentType="text/html; UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/search.css">
    <title>良心比價網-搜尋頁面</title>
</head>
<body>
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
            <a href="<c:url value='myFavorite'/>" id="mf">
                <div class="my_favorite">
                    <img id="member_img" src="${pageContext.request.contextPath}/images/love.png">
                    <span class="mffont">我的最愛</span>
                </div>
            </a>
        </div>
     <div class="user">
            <button id="member_btn" onclick="">
                <div class="member_item">
                    <img id="member_img-1" src="${pageContext.request.contextPath}/images/mem 2.png">
                    <span class="mffont" id="member"></span>
                </div>
            </button>
        </div>
    </header>
    <hr>
    <div id="bc">
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
        <div id="ra">
            <div class="range" style="font-size: larger;">價格區間 :&nbsp;&nbsp;</div>
                <div>
                    <a href="<c:url value='/price?keyword=${param.keyword}&number=0&number1=1000'/>">
                    
                        <div  class="price">$0-1000</div>
                    </a>
                    <a href="<c:url value='/price?keyword=${param.keyword}&number=1001&number1=3000'/>">
                        <div  class="price">$1000-3000</div>
                    </a>
                    <a href="<c:url value='/price?keyword=${param.keyword}&number=3001&number1=5000'/>">
                        <div  class="price">$3000-5000</div>
                    </a>
                    <a href="<c:url value='/price?keyword=${param.keyword}&number=5001&number1=7000'/>">
                        <div  class="price">$5000-7000</div>
                    </a>
                    <a href="<c:url value='/price?keyword=${param.keyword}&number=7001&number1=9000'/>">
                        <div  class="price">$7000-9000</div>
                    </a>
                    <a href="<c:url value='/price?keyword=${param.keyword}&number=9001&number1=100000'/>">
                        <div  class="price">$9000 up</div>
                    </a>
                </div>
        </div>
        <div id="result">
            <div class="range" style="font-size: larger;">搜尋結果 ：${sum} 筆</div>
                <div id="hl">
                    <a href="<c:url value='/price?keyword=${param.keyword}&number=${param.number}&number1=${param.number1}&order=asc'/>">
                    
                        <div  class="highlow">價格由低到高</div>
                    </a>
                    <a href="price?keyword=${param.keyword}&number=${param.number}&number1=${param.number1}&order=desc">
                        <div  class="highlow">價格由高到低</div>
                    </a>
                </div>
        </div>
        
        <ul id="showsearch" >
        	<h3 id = "mes">暫無商品</h3>
            <c:forEach var ="item" items = '${items}'>
            <div class="boxstyle">
                <span class="showbox">
                    <a href="${item.url} target="_blank"">
                        <img src="${item.img} " width="170" height="170">
                    </a>
                </span>
                <li type="none" class="searchbox">
                    <div class="showbox-1">
                        <a href="${item.url}" class="itemname" target="_blank">
                            <span>${item.name} </span>
                        </a>
                    </div>    
                    <div class="showbox-2">
                        <span class="price-1">$ ${item.price}</span>
                        <img class="sl" src="${item.sourceimg}">
                    </div>
                    <div class="cp">
                        <a href="<c:url value='/homePage?type=${item.type}&id=${item.id}'/>" class="compare">
                        
                            <span>同款商品比較</span>
                        </a>
                        <a href="<c:url value='/addMyFav?name=${item.name}&url=${item.url}
                        &price=${item.price}&img=${item.img}&sourceimg=${item.sourceimg}&keyword=${param.keyword}'/>" class="addlove"> 
                            <button onclick="" class="addbtn">加入我的最愛</button> 
                        </a>
                    </div>       
                </li>
            </div>
           </c:forEach>
        </ul>
        <div id="bc">
    </main>
    <script type="text/javascript">
    	
    	function itemNotFound() {
    		var Mes =document.getElementById("mes");
			if(${sum} === 0){
										
				Mes.style.visibility ="visible";
	
			}else{
				
				Mes.style.visibility ="hidden";
			};
		};
    	
    	
    	itemNotFound();
    </script>
    <script type="text/javascript">
    	
    
    
    
    
    
    </script>
    <script>
	if (UserNameCheck = "${username}") {
		document.getElementById("member").innerText = "歡迎回來："+"${username}" ;
	}else {
		document.getElementById("member").innerText = "登入/註冊" ;
	}
	</script>
</body>
</html>