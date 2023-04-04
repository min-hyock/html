// 배열 : 여러 데이터를 하나의 묶음으로 다루는 것

// 1. 배열의 선언
let numList = [];
let numList2 = new Array(3);
console.log(numList2);
// 3개로 선언했어도, 초과 가능 ! -> 공간이 동적, 가변적
let numList3 = new Array(8,9,10);
console.log(numList3);

// 2. 배열의 생성
numList = [1,2,3];
console.log(numList);
numList2 = [4,5,6,7];
console.log(numList2);

// 3. 배열 내 데이터 접근
console.log(numList[1]);

let numList4 = [];
numList4[0] = 100;
numList4[1] = 'ABC';
numList4[2] = true;

console.log(numList4);
// 배열의 길이 구하기 : 배열.length
console.log(numList4.length);
