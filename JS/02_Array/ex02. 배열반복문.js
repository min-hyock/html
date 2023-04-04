// 배열에 저장된 데이터를 반복문으로 출력해보기 !

let nameList = ["이민혁", "김성록", "이경진", "정유진", "조인성"];

// 1. for문
for (let i = 0; i < nameList.length; i++) {
    console.log(nameList[i]);
}

// 2. for of문
for(let i of nameList){
    console.log(i);
}

let foodList = ['짬뽕','치킨','고기']
for(let i of foodList){
    console.log(i);
}

// forEach문
let colorList = ['주황🧡','노랑💛','초록💚','파랑💙']
colorList.forEach((element, index)=>{
    console.log(index, element);
})