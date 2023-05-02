<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
    <link rel="icon" type="image/png" href="assets/img/logoImg.png">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>SOORE</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
        name='viewport' />
    <!--     Fonts and icons     -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <!-- CSS Files -->
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/css/light-bootstrap-dashboard.css" rel="stylesheet" />
    <!-- CSS Just for demo purpose, don't include it in your project -->
    <link href="assets/css/demo.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style>
#wk_todo{
    margin-top:220px;
    float: right;
    width: 600px;
    height: 670px;
    border: 1px solid #fafafa;
}

.icon_side {
            width: 16px;
            height: 16px;
            margin-right: 5px;
        }

      .modal {
        position: absolute;
        top: 0;
        left: 0;

        width: 100%;
        height: 100%;

        display: none;

        background-color: rgba(0, 0, 0, 0.4);
      }

      .modal.show {
        display: block;
      }

      .modal_body {
        position: absolute;
        top: 50%;
        left: 50%;

        width: 800px;
        height: 600px;

        /* padding: 40px; */

        /* text-align: center; */

        background-color: rgb(255, 255, 255);
        border-radius: 10px;
        box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);

        transform: translateX(-50%) translateY(-50%);
      }
      .m_head{
        height: 10%;
        padding: 20px;
        display: flex;
        justify-content: space-between;
        background-color:#e7e5e5;
        border-top-left-radius: 10px;
        border-top-right-radius: 10px;
      }
      .m_body{
        height: 80%;
        padding: 20px;
      }
      .m_footer{
        height: 10%;
        padding: 15px;
        background-color:#e7e5e5;
        border-bottom-left-radius: 10px;
        border-bottom-right-radius: 10px;
        display: flex;
        justify-content: end;
      }
      .modal_title{
        font-size: 18px;
        color: gray;
        font-weight: 500;
      }
      .close_btn{
        font-size: 20px;
        color: rgb(139, 139, 139);
        font-weight: 900;
        cursor: pointer;
      }
      .modal_label{
        padding-top: 10px;
      }
      .input_box{
        width: 100%;
        border: 1px solid rgb(189, 189, 189);
        height: 30px;
      }
      .modal_btn{
        width: 80px;
        height: 30px;
        border-radius: 5px;
        text-align: center;
        font-size: 14px;
        font-weight: bolder;
        padding-top: 5px;
        margin-left: 5px;
        font-family: sans-serif;
      }
      .cancle{
        background-color: white;
        color: black;
      }
      .save{
        background-color: rgb(50, 77, 158);
        color: white;
      }
      
      
      
      
      
      
      
      
      table {
            border-collapse: collapse;
            border-spacing: 0;
        }

        section.notice {
            /* padding: 80px 0; */
            margin-left: 0px;
        }

        .page-title {
            margin-bottom: 60px;
        }

        .page-title h3 {
            font-size: 28px;
            color: #333333;
            font-weight: 400;
            text-align: center;
        }

        .board-table {
            font-size: 13px;
            width: 100%;
            border-top: 1px solid #ccc;
            border-bottom: 1px solid #ccc;
        }

        .board-table a {
            color: #333;
            display: inline-block;
            line-height: 1.4;
            word-break: break-all;
            vertical-align: middle;
        }

        .board-table a:hover {
            text-decoration: underline;
        }

        .board-table th {
            text-align: center;
        }

        .board-table .th-num {
            width: 100px;
            text-align: center;
        }

        .board-table .th-date {
            width: 200px;
        }

        .board-table th,
        .board-table td {
            padding: 14px 0;
        }

        .board-table tbody td {
            border-top: 1px solid #e7e7e7;
            text-align: center;
        }

        .board-table tbody th {
            padding-left: 28px;
            padding-right: 14px;
            border-top: 1px solid #e7e7e7;
            text-align: left;
        }

        .board-table tbody th p {
            display: none;
        }


      


        .container {
            width: 720px;
            margin-left: 0px;
        }

        .blind {
            position: absolute;
            clip: rect(0 0 0 0);
            margin: -1px;
            width: 1px;
            height: 1px;
        }

        body {
            font-family: Arial, sans-serif;
        }

        .search {
            position: relative;
            width: 300px;
            margin-bottom: 30px;
        }

        input {
            width: 100%;
            border: 1px solid #bbb;
            border-radius: 8px;
            padding: 10px 12px;
            font-size: 14px;
        }

        #s_img {
            position: absolute;
            width: 17px;
            top: 10px;
            right: 12px;
            margin-top: 3px;
        }

        input:focus {
            outline: none;
        } 
        
     /* ---------------아래로 boardpost style css ----------------- */

      	.post {
            max-width: 800px;
            margin: 0 auto;
            border: 1px solid #ddd;
        }

        .post-title {
            padding: 0px 20px 0px 20px;
            margin-top: 20px;
        }

        .post-content {
            padding: 0px 20px 0px 20px;
            margin-top: 0;
        }

        #comment-section {
            margin-top: 20px;
            padding: 10px;
            background-color: #f0f0f0;
            border-radius: 5px;
        }

        #comment-list {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        #comment-list li {
            display: flex;
            align-items: center;
            justify-content: space-between;
            margin-bottom: 10px;
        }

        #comment-list p {
            display: inline;
            margin-bottom: 5px;
            font-size: 16px;
            margin-left: 8px;
        }

        #comment-list li span {
            margin-left: 10px;
            font-size: 12px;
        }

        #comment-form {
            margin-top: 20px;
        }

        #comment-form label {
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
        }

        #comment-form textarea {
            margin-bottom: 30px;
            outline: none;
            width: 90%;
            height: 50px;
            padding: 5px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;
            resize: none;
        }
        #comment-input {
        width: 650px;
        }
        
        #commGet {
	    display: flex;
	    align-items: center;
	    justify-content: space-between;
	    margin-bottom: 10px;
        }
        
        #commGet span {
        margin-left: 10px;
    	font-size: 12px;
        }
        
        #commGetUl {
        padding-left: 0;
        }
      
    </style>
</head>

<body>
    <div class="wrapper">
        <div class="modal" id="modal">
            <div class="modal_body">
                <div class="m_head">
                    <div class="modal_title">게시물 작성</div>
                    <div class="close_btn" id="close_btn">X</div>
                </div>
                <div class="m_body">
                    <div class="modal_label">Name</div>
                    <input type="text" class="input_box" id="name_box" />
                    <div class="modal_label">Description</div>
                    <input type="text" class="input_box" id="des_box" />
                </div>
                <div class="m_footer">
                    <div class="modal_btn cancle" id="close_btn">CANCLE</div>
                    <div class="modal_btn save" id="save_btn">SAVE</div>
                </div>
            </div>
        </div>
        <div class="sidebar">
            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="first.jsp">
                        <img src="assets/img/logoImg.png" id="logoImg" />
                        <img src="https://fontmeme.com/permalink/230419/234f3f0f39dbad0f4907a4e9073178d0.png" alt="radio-canada-font" border="0" id="logo"></a>
                </div>
                <ul class="nav">
                    <li>
                        <p style="font-size: 10px; margin-left: 20px; color: gray;">USER</p>
                    </li>
                    <li>
                        <div id="userInfo">
                            회원 정보
                        </div>
                    </li>
                    <div class="btn" id="add-btn" style="border: 1px solid #bb2649; background-color: #bb2649; color: white; width: 70%; margin-left: 40px; margin-bottom: 30px;">글쓰기</div>
                    <li>
                        <p style="font-size: 10px; margin-left: 20px; color: gray;">MENU</p>
                    </li>
                    <li>
                        <a class="nav-link" href="Gomain.do">
                            <img alt="" src="assets/img/main.png" class="icon_side">
                            <p>Main</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="Gogantt.do">
                            <img alt="" src="assets/img/gantt.png" class="icon_side">
                            <p>Gantt Chart</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="Gocalendar.do">
                            <img alt="" src="assets/img/calendar2.png" class="icon_side">
                            <p>Calendar</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="Goworklist.do">
                            <img alt="" src="assets/img/list2.png" class="icon_side">
                            <p>Work List</p>
                        </a>
                    </li>
                    <li class="nav-item active">
                        <a class="nav-link" href="BoardList.do">
                            <img alt="" src="assets/img/invite2.png" class="icon_side">
                            <p>Invite</p>
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="main-panel">
            <nav class="navbar navbar-expand-lg " color-on-scroll="500">
                <div class="container-fluid">
                    <p class="navbar-brand"></p>
                    <button href="" class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                        aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-bar burger-lines"></span>
                        <span class="navbar-toggler-bar burger-lines"></span>
                        <span class="navbar-toggler-bar burger-lines"></span>
                    </button>
                </div>
            </nav>
            
            <div id="container">
                <div id="wk_title">
                    <h3>중소 벤처 기업부 홈페이지 LNB 수정</h3>
                </div>
                <div id="right">
                    <div id="wk_feed" class="feed d-flex">
                        <div class="feed a">상태 <br><button
                                style="background-color: rgb(56, 192, 79); width: 60px; height: 30px; border-radius: 20px; font-size: 12px; border: orange; margin-top: 10px; font-weight: bold; color: white;">진행</button>
                        </div>
                        <div class="feed a">우선 순위 <br>
                            <div style="margin-top: 10px;"><img src="assets/img/긴급.png"
                                    style="margin-bottom: 5px;"><span style="color: red; font-size: 15px;">긴급</span>
                            </div>
                        </div>
                        <div class="feed a">진척도 <iframe src="progress.jsp" frameborder="0"
                                style="margin-left: 40px; margin-top : 5px"></iframe> </div>
                        <div class="feed a">시작 날짜 <br>
                            <div style="margin-top: 10px;"></div><span
                                style="font-weight: bold; font-size: 15px;">2023-04-12</span>
                        </div>
                        <div class="feed a">마감 날짜 <br>
                            <div style="margin-top: 10px;"></div><span
                                style="font-weight: bold; font-size: 15px;">2023-04-30</span>
                        </div>
                    </div>

                    <div id="wk_board" style="margin-top:20px;">
                    
                    <div class="bd_container" style="overflow: visible;">
        <!-- board list area -->
        <div class="search">
            <input type="text" placeholder="Search">
            <img id="s_img" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png">
        </div>

		
        <div id="board-list">
            <div class="container">
               
                <div class="post" style="border-radius: 5px;">
           			 <h4 class="post-title">${vo.post_title}</h4>
            	</div>
       			 <hr>
       			 
       			 <div style="width: 100%; height: 442px;"> 
            	 <p class="post-content">${vo.post_detail}</p>
        		 </div>
        		 
        		 <div style="width: 100%">
        		 <p><span>첨부파일</span>
        		 <span><jsp:include page="filedownload.jsp" /></span>
        		 </p>
        		 </div>
        		 
				<div id="comment-section">
				         <span><br></span>
				     <form id="commReg" method="post">
				         <div id="ttts" style="width: 100%">
				             <textarea id="comment-input" rows="5" placeholder="댓글 입력" name="cm_detail" required ></textarea>
				             <button type="button" class="btn btn-primary btn-sm" id="save">등록</button>
				             <button type="reset" class="btn btn-warning btn-sm">취소</button>
				         </div>
				     </form>
				     <span><br></span>
				     
				     <ul id = "commGetUl">
					 <c:forEach items="${list}" var="vo1">	
					 <li id="commGet">
					     <p>${vo1.cm_detail}</p>
					     <span><fmt:formatDate value = "${vo1.indate}" pattern="yyyy.MM.dd"/></span>
					     
				     </c:forEach>
				     </li>
				     </ul>
				     
				     <ul id="comment-list">
				     	
				         <!-- 저장 되어있는 댓글 불러오는 영역 -->
				     </ul>
				 </div>
		                       
		                  
		            </div>
		            <!-- <button style="float: right; margin: 10px; position: fixed; top: 0; right: 0;">글쓰기</button> -->
		        </div>
		
		  		  </div>
                    
                 </div>
                </div>

                <div id="wk_todo">
                    <iframe src="todo_frame.jsp" frameborder="0"
                        style="width: 550px; height: 650px; margin: 10px;"></iframe>
                </div>
            </div>

        </div>

    </div>


<!--   Core JS Files   -->
<script src="assets/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="assets/js/core/popper.min.js" type="text/javascript"></script>
<script src="assets/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="assets/js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Chartist Plugin  -->
<script src="assets/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="assets/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="assets/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="assets/js/demo.js"></script>

<script type="text/javascript">

    $(document).on('click', '#add-btn', function (e) {
        console.log("click event");
        $('#modal').addClass('show');

    });

    // 모달 닫기
    $(document).on('click', '#close_btn', function (e) {
        console.log("click event");
        $('#modal').removeClass('show');

    });

	
    // 댓글 등록 부분 변수 지정 
	const commentForm = document.getElementById('comment-form');
    const commentList = document.getElementById('comment-list');
    const commentInput = document.getElementById('comment-input');
    const saveButton = document.getElementById('save'); // submit 버튼 id

    saveButton.addEventListener('click', () => {
        const sendData = $('#commReg').serialize();

        $.ajax({
            url: 'CommReg.do',
            type: 'post',
            data: sendData,
            success: function(data) {
                console.log('성공')
                addCommentToList(commentInput.value);
                commentInput.value = ''; // submit후 입력창 초기화 
            },
            error: function(error) {
                console.log(error);
            }
        })
    });

    // 입력한 댓글 댓글창 아래로 바로 뜨도록
    function addCommentToList(comment) {
        const newComment = document.createElement('li');
        const commentContent = document.createElement('p');
        const commentInfo = document.createElement('span');
        const now = new Date();

        commentContent.innerText = comment;
        commentInfo.innerText = now.toLocaleDateString();

        newComment.appendChild(commentContent); //p태그 추가 -  내용
        newComment.appendChild(commentInfo);  // span태그 추가 - 날짜
        commentList.appendChild(newComment); // 댓글달리는 곳에 li 삽입
    }

</script>

</body>
</html>