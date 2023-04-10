// 1. 주어진 데이터를 담은 배열을 생성한다.
let numList = [23,54,78,13,44];

// 2. 최댓값을 찾아서 출력해준다.
let maxNum = numList[0];

for(let i = 0; i < numList.length ; i++){
    // maxNum과 numList 안의 값을 비교
    if(numList[i]>maxNum){
        maxNum = numList[i];
    }
}
alert(`최댓값 >> ${maxNum}`);