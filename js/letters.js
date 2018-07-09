setInterval(
  function() {
    var characters = 'QUAEENIMESTVITAVESTRAVAPORESTADMODICUMPARENSDEINCEPSEXTERMINATUR';
    var colStr = null;
    var rows = [];
    //for every column (there are 8)
    for(var j = 0; j <= 7; j++) {
      colStr = "";
      //for every space within the column
      for (var i = 0; i <= 7; i++){
        //get a random place in the string
        var random = parseInt(Math.random()*characters.length);
        //find the proper letter
        var letter = characters.charAt(random); //returning random letter
        //remove it from the array
        characters = characters.slice(0,random) + characters.slice(random+1);
        //and the cell becomes that letter
        var cell = '<td>' + letter + '</td>';
        //then we add it to the column
        colStr += cell;
      }
      //when its done we push it to the whole thing
      rows.push('<tr>' + colStr + '</tr>');
    }

    //and put it all in the html
    document.getElementById('characterTable').innerHTML = rows.join("");
  },
  200
);
