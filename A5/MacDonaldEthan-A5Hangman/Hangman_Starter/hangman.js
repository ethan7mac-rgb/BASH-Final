window.onload = function(){
    console.log("test");
    //AJAX call to vocabularies.json
    let url = "data/vocabularies.json";
    let xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function() {
    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
        JSONParse(xhr.responseText)
    }
    };
    xhr.open("GET", url, true);
    xhr.send();
    //Disabling and hiding elements until we need them
    let btnCat = document.querySelector("#btnCatOk");
    btnCat.addEventListener("click", CatClick)
    btnCat.disabled = true;
    this.document.querySelector("#fullCboCat").classList.add('hidden');
    let btnNewGame = this.document.querySelector("#btnNew");
    btnNewGame.addEventListener("click", btnNewClick);
    //Making letter buttons, assigning them to letterClick and disabling them
    let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    let letter = alphabet.split("");
    console.log(letter);
    for(let i = 0; i < letter.length; i++){
        let letters = document.querySelector("#letters");
        letters.innerHTML += '<button class="letter">'+ letter[i] +"</button>"
    }
    let btnLetters = document.querySelectorAll(".letter");
    for(let i = 0; i < btnLetters.length; i++){
        btnLetters[i].addEventListener("click", letterClick);
        btnLetters[i].disabled = true;
    }
        
}
//Global variables we use throughout the code
let word = "";
let VOCABULARIES = [];
let GuessCount = 6;
//Assigning our VOCABULARIES variable the result of our parse
function JSONParse(text){
    VOCABULARIES = JSON.parse(text);
    VOCABULARIES = VOCABULARIES.vocabularies;
    console.log(VOCABULARIES);
}
//When btnNewGame is clicked disable it and unhide and reenable btnCatOk 
function btnNewClick(evt){
    evt.target.disabled = true;
    let fullCboCat = document.querySelector('#fullCboCat');
    fullCboCat.classList.remove('hidden');
    document.querySelector('#btnCatOk').disabled = false;
    //Resets html incase your replaying
    document.querySelector("#gallows").innerHTML = "<div id='miscInfo'><div id='selCategory'></div><canvas id='hangman'></canvas><div id='guessCount'></div></div><div id='word'></div>;";
}
//When btnCatOk is clicked disable it, hide cboCat and enable our letter buttons
function CatClick(evt){
    evt.target.disabled = true;
    let fullCboCat = document.querySelector("#fullCboCat");
    fullCboCat.classList.add('hidden');
    document.querySelector("#selCategory").innerHTML = "<p>Category: "+document.querySelector("#cboCat").value+"</p>";
    let btnLetters = document.querySelectorAll(".letter");
    for(let i = 0; i < btnLetters.length; i++){
        btnLetters[i].disabled = false;
    }
    //Call gamesetup
    GameSetup();
}

function letterClick(evt){   
    //Variables used later
    let guessCounter = document.querySelector("#guessCount");
    let wordDiv = document.querySelector("#word");
    let letters = wordDiv.querySelectorAll("p");
    //Set our word to be complete by default and change this later
    wordComplete = true;
    //Check what letter our user clicked and disable it
    let selLetter = evt.target.innerHTML;
    console.log(selLetter, "clicked");
    evt.target.disabled =true;
    //Split the word into an array
    let wordPieces = word.split("");
    //Write to letter[i] inner html if the word piece matched the letter
    for (let i = 0; i < wordPieces.length; i++){
        if(wordPieces[i].toLowerCase() === selLetter.toLowerCase()){
            letters[i].innerHTML = selLetter;
        }
    }
    //If it didnt include the letter subtract 1 from GuessCount ,Redisplay it and call Draw()
    if (!wordPieces.includes(selLetter.toLowerCase())){
        GuessCount--;
        Draw()
        guessCounter.innerHTML = "<p> Guesses Remaining: "+GuessCount.toString()+"</p>";
    }
    //Checks if we have any empty space in letters if we do then  we know the word isnt complete
    for(let i = 0; i < letters.length; i++){
        if(letters[i].innerHTML === ""){
            wordComplete = false;
            break;
        }
    }
    //if you win display winner and call reset
    if(wordComplete === true){
        document.querySelector("#gallows").innerHTML = "<p id = win>WINNER!!!</p>";
        Reset();
    } 
    //if you lost display losing msg and call reset  
    if(GuessCount <= 0){
        document.querySelector("#gallows").innerHTML = "<p id = lose>You Lost :(</p>";
        Reset();
    } 
}
//Resets us back to a newgame state
function Reset(){
    document.querySelector("#btnNew").disabled = false;
    let btnLetters = document.querySelectorAll(".letter");
    for(let i = 0; i < btnLetters.length; i++){
        btnLetters[i].disabled = true;
    }
}

function GameSetup(){
    //Clear the canvas
    ClearCanvas();
    //Reset guessCount to 6 incase your replaying
    GuessCount = 6;
    //Call draw
    Draw();
    //Figure out users selected category
    let category = document.querySelector("#cboCat").value.toLowerCase();
    console.log(category);
    let selCat;
    for(let i = 0; i < VOCABULARIES.length; i++){
        if(VOCABULARIES+[i].categoryName === category){
            selCat = VOCABULARIES[i].words;
            break;
        }
    }
    //Grab a random word from the selected category
    let words = selCat;
    let randomIndex = Math.floor(Math.random() * selCat.length);
    word = words[randomIndex];
    let wordPieces = word.split("");
    console.log(wordPieces);
    //Create the blank boxes to be filled in by letter clicks
    let wordDiv = document.querySelector("#word");
    wordDiv.innerHTML = "";
    for(let i = 0; i < wordPieces.length; i++)
        wordDiv.innerHTML += '<p></p>';
    //setup our guess counter
    let guessCounter = document.querySelector("#guessCount");
    guessCounter.innerHTML = "<p> Guesses Remaining: "+GuessCount+"</p>";
}

//Makes our hangman using canvas
function Draw(){
    let canvas = document.querySelector("#hangman");
    let context = canvas.getContext("2d");
    //Draws diffrent parts based on where we are in guess count
    switch(GuessCount){
        case 6:
            context.lineWidth = 8; 
            context.beginPath();
            //x y
            context.moveTo(5, 0);
            context.lineTo(5, 225.5);
            context.moveTo(5, 2.5);
            context.lineTo(100, 2.5);
            context.lineTo(100, 25.5);
            context.moveTo(5, 25.5);
            context.lineTo(50, 2.5);
            context.stroke();
            break;

        case 5:
            context.lineWidth = 5;
            context.beginPath();
            context.arc(100, 35, 10, 0, Math.PI*2, true);
            context.closePath();
            context.stroke();
            break;
      
        case 4:
            context.beginPath();
            context.moveTo(100, 45.5);
            context.lineTo(100, 100.5);
            context.stroke();
            break;

        case 3:
            context.beginPath();
            context.moveTo(100, 60.5);
            context.lineTo(70, 70.5);
            context.stroke();
            break;

        case 2:
            context.beginPath();
            context.moveTo(100, 60.5);
            context.lineTo(130, 70.5);
            context.stroke();
            break;

        case 1:
            context.beginPath();
            context.moveTo(100, 100);
            context.lineTo(80, 125);
            context.stroke();
            break;

        case 0:
            context.beginPath();
            context.moveTo(100, 100);
            context.lineTo(125, 125);
            context.stroke();
        break;
    }
}
function ClearCanvas(){
    let canvas = document.querySelector("#hangman");
    let context = canvas.getContext("2d");
    context.clearRect(0, 0, canvas.width, canvas.height);
}