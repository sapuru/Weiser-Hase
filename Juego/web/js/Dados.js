function lanzar_dados() {
    var die1, die2, di3, di4, status, status2, status3, d1, d2, d3, d4, diceTotal, diceTotal2;

    die1 = document.getElementById("die1");
    die2 = document.getElementById("die2");
    die3 = document.getElementById("die3");
    die4 = document.getElementById("die4");


    status = document.getElementById("status");
    status2 = document.getElementById("status2");
    status3 = document.getElementById("status3");

    d1 = Math.floor(Math.random() * 12) + 1;
    d2 = Math.floor(Math.random() * 12) + 1;
    d3 = Math.floor(Math.random() * 12) + 1;
    d4 = Math.floor(Math.random() * 12) + 1;

    diceTotal = d1 + d2;
    diceTotal2 = d3 + d4;

    die1.innerHTML = d1;
    die2.innerHTML = d2;
    die3.innerHTML = d3;
    die4.innerHTML = d4;

    status.innerHTML = "Resultado del jugador 1 " + " = " + diceTotal + ".";
    status2.innerHTML = "Resultado del jugador Pc " + " = " + diceTotal2 + ".";

    if (diceTotal == diceTotal2) {
        status3.innerHTML += "Empate";
    }
    if (diceTotal > diceTotal2) {
        status3.innerHTML += "Ganador jugador 1";
    }
    if (diceTotal < diceTotal2) {
        status3.innerHTML += "Ganador jugador PC";
    }
}


function init() {
    var button;
    button = document.getElementById("boton");
    boton.onclick = lanzar_dados;
}
window.onload = init;