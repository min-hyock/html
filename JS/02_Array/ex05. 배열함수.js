// 배열 함수
let nameList = ['김성록','이경진','이민혁','정유진','조인성']

// 1. 마지막 인덱스 데이터 추가 : push()
nameList.push('임경남');
console.log('마직막 추가',nameList);

// 2. 마지막 인덱스 데이터 삭제 : pop()
nameList.pop();
console.log('마지막 데이터 삭제',nameList);

// 3. 첫번째 인덱스 데이터 추가 : unshift()
nameList.unshift('안현진');
console.log('첫번째 추가',nameList);

// 4. 첫번째 인덱스 데이터 삭제 : shift()
nameList.shift();
console.log('첫번째 삭제',nameList);

// 5. 원하는 위치에 데이터 추가 또는 삭제 : splice()
// -> 추가 splice(인덱스번호,0,추가할데이터)
nameList.splice(1,0,'임경남','강태우');
console.log('splice 추가',nameList);

// -> 삭제 splice(인덱스번호,삭제할개수)
nameList.splice(2,2);
console.log('splice 삭제',nameList);