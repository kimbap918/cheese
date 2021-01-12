<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
    <link rel="stylesheet" type="text/css" href="resources/css/mypage.css">
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
                <li><a href="#">메인메뉴1</a>
                    <ul class="sub_menu">
                        <li><a href="#">서브메뉴1</a></li>
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

    <div id="mypage">

        <div id="main_con">
            <div class="box1">
                <ul class="nav">
                    <li>내 정보</li>
                    <li>배송조회</li>
                    <li>메뉴4</li>
                    <li>메뉴5</li>
                    <li>메뉴9</li>
                </ul>
            </div>

            <div class="box2">
                <h2>회원 정보 수정</h2>
                <div class="input_box">
                    패스워드 : <input type="password"><br>
                    이메일 : <input type="email"><br>
                    이름 : <input type="text"><br>
                    주소 : <input type="text"><br>
                </div>
            </div>
        </div>

    </div>
    


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