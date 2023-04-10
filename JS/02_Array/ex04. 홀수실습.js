let num = [1, 2, 3, 4, 5, 6, 7, 8];

let odd = [];
let cnt = 0;
for (let i = 0; i < num.length; i++) {
  if (num[i] % 2 == 1) {
    odd[cnt] = num[i];
    cnt++;
  }
}
// for (let i of num) {
//   if (i % 2 == 1) {
//     odd[cnt] = i;
//     cnt++;
//   }
// }
alert(`list에 들어있는 홀수는 ${odd}이며, 총 ${odd.length}개입니다.`);