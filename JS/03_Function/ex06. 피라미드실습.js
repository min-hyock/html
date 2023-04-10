// 이모티콘, 행 개수 입력
let emo = prompt('이모티콘을 입력하세요.')
let row = Number(prompt('출력할 행의 개수를 입력하세요'))

// 1. 함수 선언문 - > pira1
function pira1(emo, row){
    for(let i = 1; i <= row; i++){
        for(let j = 1; j <= i ; j++){
            document.write(emo)
        }
        document.write('<br>')
    }
}
// 2. 함수 표현식 - > pira2
const pira2 = function(emo, row){
    for(let i = 1; i <= row; i++){
        for(let j = 1; j <= i ; j++){
            document.write(emo)
        }
        document.write('<br>')
    }
}
// 2. 화살표 함수 - > pira3
const pira3 = (emo, row) => {
    for(let i = 1; i <= row; i++){
        for(let j = 1; j <= i ; j++){
            document.write(emo)
        }
        document.write('<br>')
    }
}



// 함수 호출 시 출력
pira1(emo,row)
pira2(emo,row)
pira3(emo,row)
