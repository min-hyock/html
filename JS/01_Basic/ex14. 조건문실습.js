// 1. 사용자로부터 색상을 입력받는다.
// 2. 조건에 따라 배경색을 지정해준다
//    빨강 -> red, 초록 -> green, 파랑 -> blue
//    그외 -> 잘못 입력하셨습니다 ** 알림팝업창

let inputColor = prompt('색상을 입력해주세요.(빨강,초록,파랑)')

if(inputColor=='빨강'){
    document.querySelector('body').style.backgroundColor = 'red';
}
else if(inputColor=='초록'){
    document.querySelector('body').style.backgroundColor = 'green';
}
else if(inputColor=='파랑'){
    document.querySelector('body').style.backgroundColor = 'blue';
}else{
    alert('잘못 입력하셨습니다.')
}