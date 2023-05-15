<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/myFavorite1.css">
    <title>我的最愛-良心比價網</title>
</head>
<body>
	<header>
        <div class="logo">
            <a href="<c:url value='/'/>"><img src="${pageContext.request.contextPath}/images/logoo.png" alt="公司LOGO"></a>
        </div>
        <form action="">
            <div class="search_in">
                <input class="search_input" type="text" placeholder="搜尋比價  請輸入關鍵字">
                <button class="search_btn"></button>
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
                <div class="member_item">
                    <img id="member_img-1" src="${pageContext.request.contextPath}/images/mem 2.png">
                    <span class="mffont" id="member"></span>
                </div>
            </button>
        </div>
    </header>
   <hr>
    <div class="column middle">
        <div class="MyFavorite">
            <span class="mffont-1">我的最愛</span>
        </div>    
        <div class="centerdown">
        	<c:forEach var='fav' items='${myfav}'>
            <li class="centerdown01">
<%--                 <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank" >
                    <div class="centerdownleo">${fav.id}</div>
                </a>
 --%>                <div class="line"></div>
                <div class="button">
                    <a href="${fav.url}" style="text-decoration: none;" target="_blank">
                        <div class="buttonpc">
                            <img src="${fav.img} " width="90%" height="110px" style="">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <a href="${fav.url}" style="text-decoration: none;" target="_blank">
                    <div class="name">
                        <span style="margin: 5%;">${fav.name}</span>
                    </div>
                </a>
                <div class="line"></div>
                <div>
                    <a href="${fav.url}" style="text-decoration: none;" target="_blank">
                        <div class="button01">
                            <img src="${fav.sourceimg}" width="100%" height="100%">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="mn">
                    <a href="${fav.url}" style="text-decoration: none;" target="_blank">
                        <div class="money02">$${fav.price}</div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="last01">
                    <div class="pch">
                        <a href="${fav.url} " style="text-decoration: none;" target="_blank">
                            <div class="buttongo">前往購買</div>
                        </a>
                    </div>
                    <div class="pch">
                        <div class="remove">
                        	<a href="<c:url value='/delMyFav?id=${fav.id}'/>">
                            	<button onclick="del_sub_item()">移除此商品</button>
                            </a>
                        </div>
                    </div>
                </div>
            </li>
           </c:forEach>
            <!-- <li class="centerdown01">
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank" >
                    <div class="centerdownleo">2</div>
                </a>
                <div class="line"></div>
                <div class="button">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="buttonpc">
                            <img src="../img/dunk.png" width="90%" height="120px">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                    <div class="name">
                        <span style="margin: 5%;">Nike Dunk Low 休閒鞋 熊貓 黑白 低筒</span>
                    </div>
                </a>
                <div class="line"></div>
                <div>
                    <a href="" style="text-decoration: none;" target="_blank">
                        <div class="button01">
                            <img src="../img/nikelogo.jpeg" width="100%" height="100%">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="mn">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="money02">$5100</div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="last01">
                    <div class="pch">
                        <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                            <div class="buttongo">前往購買</div>
                        </a>
                    </div>
                    <div class="pch">
                        <div class="remove">
                            <button onclick="del_sub_item()">移除此商品</button>
                        </div>
                    </div>
                </div>
            </li>
            <li class="centerdown01">
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank" >
                    <div class="centerdownleo">3</div>
                </a>
                <div class="line"></div>
                <div class="button">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="buttonpc">
                            <img src="../img/dunk.png" width="90%" height="120px">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                    <div class="name">
                        <span style="margin: 5%;">Nike Dunk Low 休閒鞋 熊貓 黑白 低筒</span>
                    </div>
                </a>
                <div class="line"></div>
                <div>
                    <a href="" style="text-decoration: none;" target="_blank">
                        <div class="button01">
                            <img src="../img/nikelogo.jpeg" width="100%" height="100%">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="mn">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="money02">$5100</div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="last01">
                    <div class="pch">
                        <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                            <div class="buttongo">前往購買</div>
                        </a>
                    </div>
                    <div class="pch">
                        <div class="remove">
                            <button onclick="del_sub_item()">移除此商品</button>
                        </div>
                    </div>
                </div>
            </li>
            <li class="centerdown01">
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank" >
                    <div class="centerdownleo">4</div>
                </a>
                <div class="line"></div>
                <div class="button">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="buttonpc">
                            <img src="../img/dunk.png" width="90%" height="120px">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                    <div class="name">
                        <span style="margin: 5%;">Nike Dunk Low 休閒鞋 熊貓 黑白 低筒</span>
                    </div>
                </a>
                <div class="line"></div>
                <div>
                    <a href="" style="text-decoration: none;" target="_blank">
                        <div class="button01">
                            <img src="../img/nikelogo.jpeg" width="100%" height="100%">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="mn">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="money02">$5100</div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="last01">
                    <div class="pch">
                        <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                            <div class="buttongo">前往購買</div>
                        </a>
                    </div>
                    <div class="pch">
                        <div class="remove">
                            <button onclick="del_sub_item()">移除此商品</button>
                        </div>
                    </div>
                </div>
            </li>
            <li class="centerdown01">
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank" >
                    <div class="centerdownleo">5</div>
                </a>
                <div class="line"></div>
                <div class="button">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="buttonpc">
                            <img src="../img/dunk.png" width="90%" height="120px">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                    <div class="name">
                        <span style="margin: 5%;">Nike Dunk Low 休閒鞋 熊貓 黑白 低筒</span>
                    </div>
                </a>
                <div class="line"></div>
                <div>
                    <a href="" style="text-decoration: none;" target="_blank">
                        <div class="button01">
                            <img src="../img/nikelogo.jpeg" width="100%" height="100%">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="mn">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="money02">$5100</div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="last01">
                    <div class="pch">
                        <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                            <div class="buttongo">前往購買</div>
                        </a>
                    </div>
                    <div class="pch">
                        <div class="remove">
                            <button onclick="del_sub_item()">移除此商品</button>
                        </div>
                    </div>
                </div>
            </li>
            <li class="centerdown01">
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank" >
                    <div class="centerdownleo">6</div>
                </a>
                <div class="line"></div>
                <div class="button">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="buttonpc">
                            <img src="../img/dunk.png" width="90%" height="120px">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                    <div class="name">
                        <span style="margin: 5%;">Nike Dunk Low 休閒鞋 熊貓 黑白 低筒</span>
                    </div>
                </a>
                <div class="line"></div>
                <div>
                    <a href="" style="text-decoration: none;" target="_blank">
                        <div class="button01">
                            <img src="../img/nikelogo.jpeg" width="100%" height="100%">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="mn">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="money02">$5100</div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="last01">
                    <div class="pch">
                        <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                            <div class="buttongo">前往購買</div>
                        </a>
                    </div>
                    <div class="pch">
                        <div class="remove">
                            <button onclick="del_sub_item()">移除此商品</button>
                        </div>
                    </div>
                </div>
            </li>
            <li class="centerdown01">
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank" >
                    <div class="centerdownleo">7</div>
                </a>
                <div class="line"></div>
                <div class="button">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="buttonpc">
                            <img src="../img/dunk.png" width="90%" height="120px">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                    <div class="name">
                        <span style="margin: 5%;">Nike Dunk Low 休閒鞋 熊貓 黑白 低筒</span>
                    </div>
                </a>
                <div class="line"></div>
                <div>
                    <a href="" style="text-decoration: none;" target="_blank">
                        <div class="button01">
                            <img src="../img/nikelogo.jpeg" width="100%" height="100%">
                        </div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="mn">
                    <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                        <div class="money02">$5100</div>
                    </a>
                </div>
                <div class="line"></div>
                <div class="last01">
                    <div class="pch">
                        <a href="https://www.nike.com/tw/" style="text-decoration: none;" target="_blank">
                            <div class="buttongo">前往購買</div>
                        </a>
                    </div>
                    <div class="pch">
                        <div class="remove">
                            <button onclick="del_sub_item()">移除此商品</button>
                        </div>
                    </div>
                </div>
            </li>  -->
        </div>
    </div>
    <!-- <script>
        function del_sub_item() {
            const subItem = document.querySelector('.sub_item');
            console.log(subItem);
            
            // 取得所有子元素
            const children = subItem.childNodes;

            // 迭代所有子元素，從 DOM 中移除它們
            children.forEach((child) => {
                subItem.removeChild(child);
            });

        }
    </script> -->
      <script>
	if (UserNameCheck = "${username}") {
		document.getElementById("member").innerText = "歡迎回來："+"${username}" ;
	}else {
		document.getElementById("member").innerText = "登入/註冊" ;
	}
	</script>
</body>
</html>