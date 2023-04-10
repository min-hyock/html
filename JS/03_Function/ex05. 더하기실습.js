let num1 = Number(prompt('첫번째 정수 입력'))
let num2 = Number(prompt('두번째 정수 입력'))

// 1. 함수 선언문 : addNumber1
function addNumber1(num1, num2){
    return num1 + num2;
}

// 2. 함수 표현식 : addNumber2
const addNumber2 = function(num1, num2){
    return num1 + num2;
}
// 2. 화살표 함수 : addNumber3
const addNumber3 = (num1, num2) => num1 + num2;



// 출력 결과 확인 -> console창
console.log(`함수 선언문 : ${addNumber1(num1, num2)}`);
console.log(`함수 표현식 : ${addNumber2(num1, num2)}`);
console.log(`화살표 함수 : ${addNumber3(num1, num2)}`);
