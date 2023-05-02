<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        body{
            background-color: #fff !important;
        }
    </style>
    <title>Document</title>


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

    <link rel="stylesheet" href="assets/css/calendar.css">
    <script src="assets/js/calendar.js"></script>

    <!-- bootstrap 4 -->
    <link rel="stylesheet" href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <script>
    
    document.addEventListener('DOMContentLoaded', function () {
        var calendarEl = document.getElementById('calendar');
        // new FullCalendar.Calendar(대상 DOM객체, {속성:속성값, 속성2:속성값2..})

        var calendar = new FullCalendar.Calendar(calendarEl, {
      
            initialDate: '2023-04-12', // 초기 로딩 날짜.
            navLinks: true, // can click day/week names to navigate views
            selectable: true,
            selectMirror: true,
            // 이벤트명 : function(){} : 각 날짜에 대한 이벤트를 통해 처리할 내용..
            customButtons: {
                addEventButton: { // 추가한 버튼 설정
                    text: "일정 추가",  // 버튼 내용
                    click: function () { // 버튼 클릭 시 이벤트 추가
                        $("#calendarModal").modal("show"); // modal 나타내기

                        $("#addCalendar").on("click", function () {  // modal의 추가 버튼 클릭 시
                            var title = $("#calendar_title").val();
                            var start_date = $("#calendar_start_date").val();
                            var end_date = $("#calendar_end_date").val();

                            //내용 입력 여부 확인
                            if (title == null || title == "") {
                                alert("내용을 입력하세요.");
                            } else if (start_date == "" || end_date == "") {
                                alert("날짜를 입력하세요.");
                            } else if (new Date(end_date) - new Date(start_date) < 0) { // date 타입으로 변경 후 확인
                                alert("종료일이 시작일보다 먼저입니다.");
                            } else { // 정상적인 입력 시
                                calendar.addEvent({
                                    "title": title,
                                    "start": start_date,
                                    "end": end_date
                                })//전송할 객체 생성


                                var allEvent = calendar.getEvents();
                                console.log(allEvent);

                                events.push(list);
                                var events = new Array(); // Json 데이터를 받기 위한 배열 선언
                                for (var i = 0; i < allEvent.length; i++) {
                                    var obj = new Object();     // Json 을 담기 위해 Object 선언
                                    // alert(allEvent[i]._def.title); // 이벤트 명칭 알람

                                    obj.title = allEvent[i]._def.title; // 이벤트 명칭  ConsoleLog 로 확인 가능.
                                    obj.start = allEvent[i]._instance.range.start; // 시작
                                    obj.end = allEvent[i]._instance.range.end; // 끝
                                    events.push(obj);
                                }


                            }

                        });
                    }
                }
            }
            ,
            select: function (arg) {
                console.log(arg);

                var title = prompt('입력할 일정:');
                // title 값이 있을때, 화면에 calendar.addEvent() json형식으로 일정을 추가
                if (title) {
                    calendar.addEvent({
                        groupId: 999,
                        title: title,
                        start: arg.start,
                        //end: arg.end,
                        // allDay: arg.allDay,
                        //backgroundColor:"yellow",
                        textColor: "blue"
                    })
                }
                calendar.unselect()
            },
            eventClick: function (arg) {
                // 있는 일정 클릭시,
                console.log("#등록된 일정 클릭#");
                console.log(arg.event);

                if (confirm('할 일 삭제')) {
                    arg.event.remove()
                }
            },
            editable: true,
            dayMaxEvents: true, // allow "more" link when too many events


            //events: 
            //================ ajax데이터 불러올 부분 =====================//
        });

        calendar.render();
    });
        
    </script>
    <style>
        body{
            width: 550px;
            height: 450px;
        }
        .container.calendar {
            float: left;
            margin: 0px !important;
            height: 420px;
        }
    </style>


</head>
	<body>
    <div class="container calendar">
        <div id='calendar'></div>
    </div>
</body>


</html>