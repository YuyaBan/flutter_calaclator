import 'package:flutter/material.dart'; //imported flutter material package

class HomePage extends StatefulWidget{ // creating a stateful widget
  @override
  State createState() => new HomePageState(); // creating the state
}

class HomePageState extends State<HomePage>{

  var num1="0", num2="0", ansStr='0', ans=0, oper='', flag=0 ;
  var fontSize = 60.0;

  void _clear() {
    setState(() {
          num1="0"; num2="0"; ansStr='0'; ans=0; oper=''; flag=0 ;
        });
  }

  void _disp() { // =
    setState(() {
          //num1="0"; num2="0"; ansStr='0'; ans=0; oper=''; flag=0 ;
          if(ansStr.length > 9 ){
            fontSize = 30.0;
          }
          if(ansStr.length <= 9 ){
            fontSize = 60.0;
          }
        });
  }

  void _plus() {
    setState(() {
          num1="0"; num2="0"; ansStr='0'; ans=0; oper=''; flag=0 ;
        });
  }

  void _minus() {
    setState(() {
          num1="0"; num2="0"; ansStr='0'; ans=0; oper=''; flag=0 ;
        });
  }

  void _div() {
    setState(() {
          num1="0"; num2="0"; ansStr='0'; ans=0; oper=''; flag=0 ;
        });
  }

  void _multi() {
    setState(() {
          num1="0"; num2="0"; ansStr='0'; ans=0; oper=''; flag=0 ;
        });
  }

  void _nine() {
    setState(() {
          num1 += "9";
          ans = int.parse(num1);
          ansStr = "$ans";
        });
  }

  void _eight() {
    setState(() {
          num1 += "8";
          ans = int.parse(num1);
          ansStr = "$ans";
        });
  }

  void _seven() {
    setState(() {
          num1 += "7";
          ans = int.parse(num1);
          ansStr = "$ans";
        });
  }

  void _six() {
    setState(() {
          num1 += "6";
          ans = int.parse(num1);
          ansStr = "$ans";
          });
  }

  void _five() {
    setState(() {
          num1 += "5";
          ans = int.parse(num1);
          ansStr = "$ans";
          });
  }

  void _four() {
    setState(() {
          num1 += "4";
          ans = int.parse(num1);
          ansStr = "$ans";
          });
  }

  void _three() {
    setState(() {
          num1 += "3";
          ans = int.parse(num1);
          ansStr = "$ans";
          });
  }

  void _two() {
    setState(() {
          num1 += "2";
          ans = int.parse(num1);
          ansStr = "$ans";
          });
  }

  void _one() {
    setState(() {
          num1 += "1";
          ans = int.parse(num1);
          ansStr = "$ans"; 
          });
    }

    void _zero() {
    setState(() {
          num1 += "0";
          ans = int.parse(num1);
          ansStr = "$ans";
          });
    }

  @override
  Widget build(BuildContext context) { // creating the widget
    return new Scaffold(
      appBar: new AppBar( //defines the content of the Appbar
        title: new Text("Calculator"),
      ),
      // body: new Container( //defines the content of the body
      //   child: new Text("Hello")
      // )
      body: Container(
        child: Column( //Since we have multiple children arranged vertically, we are using column
                mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Equal vertical space between all the children of column
          children: <Widget>[ // the column widget uses the children property
            Container( // Display Container
              constraints: BoxConstraints.expand( // Creating a boxed container 
                height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 100.0,
              ),
              alignment: Alignment.bottomRight, // Aligning the text to the bottom right of our display screen
              color: Colors.white, // Seting the background color of the container
              //decoration: new BoxDecoration(
              //  border: new Border.all(
              //    color: Colors.white,
              //    width: 5.0,
              //    )
              //),
              child: Text(
                //"0"
                "$ansStr",
                style: TextStyle( // Styling the text
                  fontSize: fontSize,
                  color: Colors.black
                ),
                textAlign: TextAlign.right,
              ),
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                 _button("9", _nine), // using custom widget _button
                 _button("8", _eight),
                 _button("7", _seven),
                 _button("+", _plus)               
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                 _button("6", _six), // using custom widget _button
                 _button("5", _five),
                 _button("4", _four),
                 _button("-", _minus)               
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                 _button("3", _three), // using custom widget _button
                 _button("2", _two),
                 _button("1", _one),
                 _button("*", _multi)               
              ],
            ),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                 _button("C", _clear), // using custom widget _button
                 _button("0", _zero),
                 _button("=", _disp),
                 _button("/", _div)               
              ],
            ),
          ],
        ),
      )
    );
  }

  Widget _button (String number, Function() f){ // Creating a method of return type Widget with number and function f as a parameter
      return MaterialButton(
        height: 120.0,
        child: Text(number,
        style:  TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
        textColor: Colors.black,
        color: Colors.grey[100],
        onPressed: f,
      );
    }

}