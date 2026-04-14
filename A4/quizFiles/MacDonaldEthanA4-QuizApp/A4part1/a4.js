window.onload = function(){
    console.log("link test");
    let url = "CanadianaQuiz.json";
    let xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
        buildSite(xhr.responseText);
    }
    };
    xhr.open("GET", url, true);
    xhr.send();
}

function buildSite(text){
    let quiz = JSON.parse(text);
    console.log("Data Parsed");
    let main = document.querySelector("#main");
    let cards = buildCards(quiz)
    main.innerHTML = "<h1>" + quiz.title + "<h1>";
    main.innerHTML += cards;
}

function buildCards(quiz){
    let questions = quiz.questions;
    let html ="";
    for(let i = 0; i < questions.length; i++){
        let obj = questions[i];
        let questNum = i+1
        html += '<div class="card"> <h4>Question ' + questNum + '</h4>';
        html += '<div class="qBlock"> <p>' + obj.questionText + '</p>';
        for(let i = 0; i < obj.choices.length; i++){
            html += '<label> <input type="radio" name="question'+questNum+'">' + obj.choices[i] + '</label>';
        }
        html += "</div> </div>"
    }
    console.log(html)
    return html;
}