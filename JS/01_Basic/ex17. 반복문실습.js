// 1. 랜덤 숫자 하나를 뽑아준다.
// 2. 사용자로부터 숫자를 입력받는다.
// 3. 랜덤 숫자와 입력 숫자를 비교하여 결과를 보여준다.
//    -> 랜덤 < 입력 : '입력한 숫자보다 작은 수입니다.'
//    -> 랜덤 > 입력 : '입력한 숫자보다 큰 수입니다.'
//    -> 랜덤 = 입력 : '정답입니다. 축하합니다! 🎉'

// 난수 생성 : Math.random()
// 소수점 이하 버림 : Math.floor()
let ranNum = Math.floor(Math.random() * 100) + 1; // 1~100 사이 값

let inputNum = Number(prompt("숫자를 입력하세요."));

while (true) {
  if (ranNum == inputNum) {
    alert("정답입니다. 축하합니다! 🎉");
    break;
  } else if (ranNum > inputNum) {
    alert(`입력한 숫자보다 큰 수입니다.`);
    inputNum = Number(prompt("숫자를 입력하세요."));
  } else if (ranNum < inputNum) {
    alert(`입력한 숫자보다 작은 수입니다.`);
    inputNum = Number(prompt("숫자를 입력하세요."));
  }
}
