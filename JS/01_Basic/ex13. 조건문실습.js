// 1. 사용자로부터 키와 몸무게를 입력받는다.
// 2. 적정 몸무게 및 사용자 몸무게와의 차이를 구한다.
// 3. 조건에 따라 결과(초과,미달,정상)를 구한다.
// 4. 형태에 맞춰 출력해준다. -> HTML 문서내 출력

let heigth = Number(prompt("키를 입력하세요"));
let weight = Number(prompt("몸무게를 입력하세요"));
console.log(heigth, weight);

let normal = (heigth - 100) * 0.9;
console.log("적정", normal);

// 절댓값 구하기 : Math.abs(값)

let gap = Math.abs(weight - normal);
console.log("차이", gap);

let result = '';
if (weight > normal) {
    result = '초과한';
} else if (weight == normal) {
    result = '정상인';
} else {
    result = '미달한';
}

document.write(`신장 : ${heigth}cm<br>
체중 : ${weight}kg<br>
적정 체중 : (${heigth}-100)X0.9=${normal}(kg)<br>
결과 : 적정 체중은 ${normal}kg이며, 현재 적정 체중에서 ${gap}kg ${result} 것을 알 수 있습니다.`);
