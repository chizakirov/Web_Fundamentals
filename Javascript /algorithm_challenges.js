//1 reverse words in a string
var str = " I love turkey ";
function reverseWord(str){
  
  word = "";
  phrase = "";

  for (var i =0; i<str.length; i++)
  {
  if (str.charAt(i)!=" ")
    {
      word += str.charAt(i); //word = word + new character
    }
  if (str.charAt(i)== " ")
    {
      phrase = word+ " " + phrase; //order of word and phrase matter! 
      //phrase + word is different from word+phrase
      word = "";
    }
  }
 phrase = word + " " +phrase;
 console.log(phrase);
 return phrase;
}
reverseWord(str);

//2 reverse all characters in a string
var oldString = " Team Chi  Leo";   
function reverse(oldString){ 
  var newString = "";
  for(var i= oldString.length-1; i>=0; i--){         
    newString += oldString.charAt(i);
    
  }
  console.log(newString);
  return newString;
}
reverse(oldString);

//3 removespace in a string
var oldString = " Team Chi  Leo";
function removeSpace(oldString){
var newString = "";
  for(var i =0; i<oldString.length; i++)
  
  {
    if(oldString.charAt(i) !== " "){
      newString += oldString.charAt(i);
    }
  }
  console.log(newString);
    return newString;
}
removeSpace(oldString);

//4 get only the first letters of each word
var oldString = " Team Chi  Leo";
function Acro(oldString){
var newString ="";
  for(var i =0; i<oldString.length; i++)
  
  {
    if((oldString.charAt(i) === " ")&&(oldString.charAt(i+1) !== " "))
       {
      newString += oldString.charAt(i+1);
 
    }
  }

  console.log(newString);
    return newString;
}
Acro(oldString);