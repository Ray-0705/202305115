<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>良心比價網</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/FrontPage.css">
</head>
<body> 
    <header>
        <div class="logo">
            <a href="<c:url value='/'/>"><img src="${pageContext.request.contextPath}/images/logoo.png" alt="公司LOGO"></a>       
        </div>
        <form  action="/mvctest2/search" method="GET">
            <div class="search_in">
                <input class="search_input" type="text" name="keyword" placeholder="搜尋比價  請輸入關鍵字">
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
        <div class="slider">
            <div>
                <img src="${pageContext.request.contextPath}/images/1.jpeg" />
            </div>
            <div>
                <img src="${pageContext.request.contextPath}/images/af1拷貝.png"/>
            </div>
            <div>
                <img src="${pageContext.request.contextPath}/images/dnuk.jpeg"/>
            </div>
            <div>
                <img src="${pageContext.request.contextPath}/images/97.jpeg"/>
            </div>
            <div>
                <img src="${pageContext.request.contextPath}/images/5.jpeg"/>
            </div>
        </div>

	    <div id="Hot_better">
            <div class="Hot_better_border">
                <h2 class="Hot_better_border_name">熱門商品比較</h2>
                <div class="hot_1">
                    <span class="showbox">
                        <div>
                            <img src="${pageContext.request.contextPath}/images/s1.png" width="160" height="160">
                        </div>
                    </span>
                    <li type="none" class="searchbox">
                        <div class="showbox-1">
                            <div href="" class="itemname">
                                <span>Nike Dunk High 熊貓 黑白 高筒</span>
                            </div>>
                        </div>    
                        <div class="cp">
                            <a href="https://www.nike.com/tw/t/dunk-%E9%AB%98%E7%AD%92-retro-%E7%94%B7-DdRmMZ/DD1399-105" class="compare" target="_blank">
                                <div class="shop">
                                    <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="45" height="30">
                                    <span>Nike</span>
                                </div>
                                <div class="pc">$ 3400</div>
                                <!-- <span class="pc">$ 4590</span> -->
                            </a>
                            <a href="https://shopee.tw/%E2%98%86%E5%B0%8FB%E4%B9%8B%E9%83%BD%E2%98%86-Nike-Dunk-High-%E2%80%9CBlack-White%E2%80%9D-DD1869-103-%E9%BB%91%E7%99%BD-%E7%86%8A%E8%B2%93-%E9%AB%98%E7%AD%92-(%E5%A5%B3)-i.5344098.10701729825?sp_atk=a329c3d1-ef16-4239-b962-c8d9a827d0b4&xptdk=a329c3d1-ef16-4239-b962-c8d9a827d0b4" class="compare" target="_blank">
                                <div class="shop">
                                    <img src="${pageContext.request.contextPath}/images/shopeelogo.png" width="30" height="30">
                                    <span>蝦皮商城</span>
                                </div>
                                <div class="pc">$ 4380</div>
                            </a>
                            <a href="https://www.momoshop.com.tw/goods/GoodsDetail.jsp?i_code=10768411&Area=search&mdiv=403&oid=1_1&cid=index&kw=dunk%20high" class="compare" target="_blank">
                                <div class="shop">
                                    <img src="${pageContext.request.contextPath}/images/momologo.png" width="30" height="30">
                                    <span>momo</span>
                                </div>
                                <div class="pc">$ 3980</div>
                            </a>
                        </div>       
                    </li>
                </div>
                <div class="hot_2">
                    <span class="showbox">
                        <div>
                            <img src="${pageContext.request.contextPath}/images/s2.png" width="160" height="160">
                        </div>
                    </span>
                    <li type="none" class="searchbox">
                        <div class="showbox-1">
                            <div class="itemname">
                                <span>Nike Air Force 1 '07</span>
                            </div>
                        </div>    
                        <div class="cp">
                            <a href="https://www.nike.com/tw/t/air-force-1-07-%E7%94%B7-WrLlWX/CW2288-111" class="compare" target="_blank">
                                <div class="shop">
                                    <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="45" height="30">
                                    <span>Nike</span>
                                </div>
                                <div class="pc">$ 3400</div>
                                <!-- <span class="pc">$ 4590</span> -->
                            </a>
                            <a href="https://shopee.tw/%E3%80%90Sharkhead%E3%80%91%E7%8F%BE%E8%B2%A8-Nike-Air-Force-1-%E5%85%A8%E7%99%BD-%E9%90%B5%E7%89%8C-%E7%99%BD-DD8959-100-CW2288-111-i.11327091.7776886931?sp_atk=96554470-86ee-4b3b-a393-5ec6eefe0d19&xptdk=96554470-86ee-4b3b-a393-5ec6eefe0d19" class="compare" target="_blank">
                                <div class="shop">
                                    <img src="${pageContext.request.contextPath}/images/shopeelogo.png" width="30" height="30">
                                    <span>蝦皮商城</span>
                                </div>
                                <div class="pc">$ 3480</div>
                            </a>
                            <a href="https://www.momoshop.com.tw/goods/GoodsDetail.jsp?i_code=8462055&Area=search&mdiv=403&oid=1_1&cid=index&kw=Nike%20Air%20Force%201%20%2707" class="compare" target="_blank">
                                <div class="shop">
                                    <img src="${pageContext.request.contextPath}/images/momologo.png" width="30" height="30">
                                    <span>momo</span>
                                </div>
                                <div class="pc">$ 2988</div>
                            </a>
                        </div>       
                    </li>
                </div>
                <div class="hot_3">
                    <span class="showbox">
                        <div>
                            <img src="${pageContext.request.contextPath}/images/s4.jpeg" width="160" height="160">
                        </div>
                    </span>
                    <li type="none" class="searchbox">
                        <div class="showbox-1">
                            <div class="itemname">
                                <span>Nike SB Zoom Pogo Plus Premium</span>
                            </div>
                        </div>    
                        <div class="cp">
                            <a href="https://www.nike.com/tw/t/dunk-%E9%AB%98%E7%AD%92-retro-%E7%94%B7-DdRmMZ/DD1399-105" class="compare" target="_blank">
                                <div class="shop">
                                    <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="45" height="30">
                                    <span>Nike</span>
                                </div>
                                <div class="pc">$ 2900</div>
                                <!-- <span class="pc">$ 4590</span> -->
                            </a>
                            <a href="https://shopee.tw/%E7%89%B9%E5%83%B9%F0%9F%98%8D%E5%85%8D%E9%81%8B-NiKe-SB-FORCE-58%E7%94%B7-%E5%A5%B3%E6%BB%91%E6%9D%BF%E9%9E%8B-%E4%BC%91%E9%96%92%E9%9E%8B-%E7%A7%8B%E5%AD%A3%E4%BD%8E%E5%B9%AB%E9%9E%8B-%E9%98%B2%E6%BB%91-%E8%80%90%E7%A3%A8-%E9%81%8B%E5%8B%95%E9%9E%8B-%E6%83%85%E4%BE%B6%E9%9E%8B-CZ2959-i.543456585.18863011206?sp_atk=c96d87a8-ce9b-4c03-a8d9-b9e107e8e630&xptdk=c96d87a8-ce9b-4c03-a8d9-b9e107e8e630" class="compare" target="_blank">
                                <div class="shop">
                                    <img src="${pageContext.request.contextPath}/images/shopeelogo.png" width="30" height="30">
                                    <span>蝦皮商城</span>
                                </div>
                                <div class="pc">$ 1880</div>
                            </a>
                            <a href="https://www.momoshop.com.tw/goods/GoodsDetail.jsp?i_code=11152982&Area=search&mdiv=403&oid=1_1&cid=index&kw=Nike%20SB%20Zoom%20Pogo%20Plus%20Premium" class="compare" target="_blank">
                                <div class="shop">
                                    <img src="${pageContext.request.contextPath}/images/momologo.png" width="30" height="30">
                                    <span>momo</span>
                                </div>
                                <div class="pc">$ 1830</div>
                            </a>
                        </div>       
                    </li>
                </div>
                <div class="hot_4">
                    <span class="showbox">
                        <div>
                            <img src="${pageContext.request.contextPath}/images/s3.jpeg" width="160" height="160">
                        </div>
                    </span>
                    <li type="none" class="searchbox">
                        <div class="showbox-1">
                            <div class="itemname">
                                <span>Nike Air Max 270</span>
                            </div>
                        </div>    
                        <div class="cp">
                            <a href="https://www.nike.com/tw/t/air-max-270-%E7%94%B7-2V5C4p/AH8050-002" class="compare" target="_blank">
                                <div class="shop">
                                    <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="45" height="30">
                                    <span>Nike</span>
                                </div>
                                <div class="pc">$ 4900</div>
                                <!-- <span class="pc">$ 4590</span> -->
                            </a>
                            <a href="https://shopee.tw/Nike-%E6%85%A2%E8%B7%91%E9%9E%8B-Wmns-Air-Max-270-%E9%BB%91-%E7%99%BD-%E5%A5%B3%E9%9E%8B-%E5%A4%A7%E6%B0%A3%E5%A2%8A-AH6789-001-%E3%80%90ACS%E3%80%91-i.106973794.4405927572?sp_atk=0aceadd8-8b54-4e16-8df4-e78d62a2d51a&xptdk=0aceadd8-8b54-4e16-8df4-e78d62a2d51a" class="compare" target="_blank">
                                <div class="shop">
                                    <img src="${pageContext.request.contextPath}/images/shopeelogo.png" width="30" height="30">
                                    <span>蝦皮商城</span>
                                </div>
                                <div class="pc">$ 2880</div>
                            </a>
                            <a href="https://www.momoshop.com.tw/goods/GoodsDetail.jsp?i_code=8739091&Area=search&mdiv=403&oid=1_1&cid=index&kw=Nike%20Air%20Max%20270" class="compare" target="_blank">
                                <div class="shop">
                                    <img src="${pageContext.request.contextPath}/images/momologo.png" width="30" height="30">
                                    <span>momo</span>
                                </div>
                                <div class="pc">$ 2680</div>
                            </a>
                        </div>       
                    </li>
                </div>
            </div>
        </div>
        <div id="product_index">
            <div class="product_border">
                <h2 class="product_name">商品分類</h2>
                <div class="item-list">
                    <div class="item-content">
                        <div class="info">
                            <a class="info-a" href="<c:url value='/sortShose'/>"  >
                                <div class="image">
                                    <img class="imgg" src="${pageContext.request.contextPath}/images/shoes.png">
                                </div>
                                <div class="name">
                                    <h3>鞋子</h3>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="item-content">
                        <div class="info">
                            <a class="info-a" href="" target="_blank">
                                <div class="image">
                                    <img class="imgg" src="${pageContext.request.contextPath}/images/shirt.png">
                                </div>
                                <div class="name">
                                    <h3>上衣</h3>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="item-content">
                        <div class="info">
                            <a class="info-a" href="" target="_blank">
                                <div class="image">
                                    <img class="imgg" src="${pageContext.request.contextPath}/images/pants.png">
                                </div>
                                <div class="name">
                                    <h3>褲子</h3>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="item-content">
                        <div class="info">
                            <a class="info-a" href="" target="_blank">
                                <div class="image">
                                    <img class="imgg" src="${pageContext.request.contextPath}/images/socks.png">
                                </div>
                                <div class="name">
                                    <h3>襪子</h3>
                                </div>
                            </a>
                        </div>
                    </div>
                    <div class="item-content">
                        <div class="info">
                            <a class="info-a" href="" target="_blank">
                                <div class="image">
                                    <img class="imgg" src="${pageContext.request.contextPath}/images/uw.png">
                                </div>
                                <div class="name">
                                    <h3>運動內衣</h3>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="official_web">
            <div class="official_web_border">
                <h2 class="Hot_better_border_name">商店分類總覽</h2>
                <div class="webweb">
                    <div class="nike_web_web">
                        <a href="https://www.nike.com/tw/" target="_blank">
                            <img src="${pageContext.request.contextPath}/images/nikelogo.jpeg" width="180"  alt="">
                        </a>
                    </div>
                    <div class="shopee_web_web">
                        <a href="https://shopee.tw/" target="_blank">
                            <img src="${pageContext.request.contextPath}/images/shopeelogo.png" width="150"  alt="">
                        </a>
                    </div>
                    <div class="momo_web_web">
                        <a href="https://www.momoshop.com.tw/" target="_blank">
                            <img src="${pageContext.request.contextPath}/images/momologo.png" width="150" height="150" alt="">
                        </a>
                    </div>
                </div>
            </div>
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