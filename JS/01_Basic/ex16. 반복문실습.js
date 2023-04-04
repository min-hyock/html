let startNum = Number(prompt('시작할 숫자를 입력하세요.'))
let endNum = Number(prompt('마지막 숫자를 입력하세요.'))
console.log(startNum,endNum);

let total = 0;
for(i = startNum; i <= endNum; i++){
    total += i;
}
console.log(`${startNum}부터 ${endNum}까지의 합은? >> ${total}`);