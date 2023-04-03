// 1. 값이 '100'과 200인 num1과 num2를 생성한다.
// 2. num1과 num2의 합을 구한다
// 3. 형태에 맞춰서 출력해준다.

let num1 = '100';
let num2 = 200;
let sum = Number(num1)+num2;
// console.log(num1+'과 '+ num2 +'의 합 >>', sum);

// Template Literals(템플릿 리터럴)
// : 표현식/문자열 삽입, 여러 줄 문자열 등 다양한 기능을 제공
// -> 백틱(`) : 숫자 1 왼쪽에 위치
// -> 표현식 : ${}
console.log(`${num1}과 ${num2}의 합 >> ${sum}`);

let userName = '이민혁';
console.log(`안녕하세요.
반갑습니다.`);
console.log(`${userName}님, 환영합니다 ! 🖐🏻`);