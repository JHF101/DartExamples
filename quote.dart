//Class used to add new quotes in more efficiently  
class Quote {

  String text;
  String author;

//Normal implementation
//  Quote(String text, String author){
//    this.text =text;
//    this.author=author;
//  }

//using named parameter
  Quote({this.text, this.author});
}

//normal implementation
//Quote myquote = Quote('quote','oscar wilde');

//using named parameters when calling
//Quote myquote = Quote(text:'wasssuh',author:'Ghandi'); // order does not matter because you specify it