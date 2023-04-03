// 자료형 변환

let num = '3.14';
console.log(num);

// 1. 문자 -> 실수 : parseFloat()
console.log(parseFloat(num));

// 2. 문자 -> 정수 : parseInt()
console.log(parseInt(num));

// 3. 문자 -> 숫자(정수, 실수) : Number()
let num2 = 5;
console.log(Number(num));
console.log(Number(num2));


// 4. 숫자 -> 문자 : String(data), data.toString()
let num3 = 100;
console.log(num3);
console.log(String(num3));
console.log(num3.toString());