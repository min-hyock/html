// 조건문 : 주어진 조건을 비교, 판단하여 결과를 얻는 구문

// 1. 삼항 연산자(===)
let coffeeMenu = '';
// let coffeeMenu = prompt('메뉴를 입력해주세요.');

// 1-1. true/false일 때 사용
// 조건연산자 (조건 ? 실행문1 : 실행문2)
coffeeMenu === '아메리카노'
? console.log('주문하신 음료가 나왔습니다')
: console.log(`${coffeeMenu} 현재 대기 시간 5분 있습니다.`);

// 1-2. 조건이 하나일 때 사용
// 논리연산자(&&)
coffeeMenu === '딸기라떼' && console.log('겨울 한장 메뉴입니다 !');

// 2. if문 사용
let inputNum = Number(prompt('숫자를 입력하세요.'))
console.log(inputNum);
if(inputNum > 10){
    console.log('10보다 큰 수');
} else {
    console.log('10보다 작은 수');
}