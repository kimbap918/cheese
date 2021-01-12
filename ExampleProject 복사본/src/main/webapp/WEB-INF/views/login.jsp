<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>main</title>
    <link rel="stylesheet" type="text/css" href="resources/css/login.css">
</head>

<body>
    <div id="header_form">
        <header class="header_top">
            <span class="left_menu"><a href="#">문의장소</a></span>
            <span class="right_menu">
                <a href="login.do">로그인</a>
                <a href="mypage.do">마이페이지</a>
                <a href="#">장바구니?</a>
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

    <div id="con">
        <div class="login_form">
            <h2>로그인</h2>
            <form class="form" action="loginCheck.do" method="post">
                <input name="id" type="text" placeholder="id"><br>
                <input name="pwd" type="password" placeholder="pwd"><br>

                <div class="login_one">
                    <input type="checkbox">로그인 저장<br>
                    <input type="submit" value="접속">
                </div>

                <a href="join.do">아직도 회원이 아니신가요?</a>

                <div class="login_two">
                    <div class="kakao">
                        <a href="#"><img src="resources/image/login_kakao.jpg" alt="">카카오로 로그인</a>
                    </div>
                    or
                    <div class="google">
                        <a href="#"><img src="resources/image/login_google.jpg" alt="">구글로 로그인</a>
                    </div>
                </div>

            </form>
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