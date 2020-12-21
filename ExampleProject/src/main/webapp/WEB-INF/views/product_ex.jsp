<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
    <link rel="stylesheet" type="text/css" href="/CSS/product_ex1.css">
</head>

<body>
    <div id="header_form">
        <header class="header_top">
            <span class="left_menu"><a href="#">문의장소</a></span>
            <span class="right_menu">
                <a href="login.do">로그인</a>
                <a href="mypage.do">마이페이지</a>
                <a href="#">장바구니</a>
                <a href="#">Q&A</a></span>
        </header>

        <header class="header_middle">
            <a href="index.do"><img src="resources/image/logo.png" alt="로고"></a>
        </header>

        <nav class="header_bottom">
            <ul class="main_menu">
                <li><a href="#">할인품목!</a></li>
                <li><a href="#">메인메뉴1_서브확인</a>
                    <ul class="sub_menu">
                        <li><a href="product_ext1.html">서브메뉴1확인</a></li>
                        <li><a href="#">서브메뉴2</a></li>
                        <li><a href="#">서브메뉴3</a></li>
                    </ul>
                </li>
                <li><a href="#">메인메뉴2</a>
                    <ul class="sub_menu">
                        <li><a href="#">서브메뉴1</a></li>
                        <li><a href="#">서브메뉴2</a></li>
                        <li><a href="#">서브메뉴3</a></li>
                    </ul>
                </li>
                <li><a href="#">메인메뉴3</a>
                    <ul class="sub_menu">
                        <li><a href="#">서브메뉴1</a></li>
                        <li><a href="#">서브메뉴2</a></li>
                        <li><a href="#">서브메뉴3</a></li>
                    </ul>
                </li>
                <li><a href="#">메인메뉴4</a>
                    <ul class="sub_menu">
                        <li><a href="#">서브메뉴1</a></li>
                        <li><a href="#">서브메뉴2</a></li>
                        <li><a href="#">서브메뉴3</a></li>
                    </ul>
                </li>
            </ul>

            <form class="search_bar" action="#" method="GET">
                <input type="text" name="search" placeholder="검색하세요" class="search_input">
                <input type="button" name="submit" value="검색" class="search_submit">
            </form>

        </nav>
    </div>

    <!-- 밑에서 부터 상품정보 -->

    <div id="main">

        <div id="product">
            <div class="main_box1">
                <div class="product_img1">
                    <img src="/image/옷1.jpg" alt="상품">
                </div>
            </div>
        
            <div class="main_box2">
                <div class="product_text">
                    <h3>웃긴 티셔츠</h3>
                    Price 88,000<br>
                    <button>장바구니 담기</button><br>
                    <button>구매하기</button>
                    <button>찜 하기</button>
                </div>
            </div>
        </div>

        <div id="inform_goods">
            <h1>상품설명</h1>
            
        </div>

    </div>

    <!-- 여기까지 상품 정보 -->
    <div id="helper">
        <a href="#" class="up"><p>↑</p></a>
        <a href=""><p>■</p></a>
        <a href="#down_test" class="down"><p>↓</p></a>
    </div>  


    <footer>
        <div id="down_test">확인용</div>
        <address>주소</address>
    </footer>
</body>


</html>