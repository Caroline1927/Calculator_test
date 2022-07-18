import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String option = '';
  int index = 0;
  int second =0;
  int first = 0;
  String userInput='0';
  String number = '';
  int sum =0;
  int answer = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      body: Stack(
        children: [
          Container(
            color: Colors.red,
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Container(
              padding: EdgeInsets.all(20),
        alignment: Alignment.centerRight,
        child: Text(
          userInput,
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
                Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "$answer",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ]),
            ),
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 310, left: 8, bottom: 30),
                child: Container(
                  child: Column(
                    children: [
                      Expanded(
                        flex:1,
                        child: TextButton(
                            child: Text(
                              "C",
                              style: TextStyle(fontSize: 45, color: Colors.white70),
                            ),
                            onPressed: (){
                              setState(() {
                                userInput= userInput.substring(0,userInput.length-1);
                              });

                            }),
                      ),
                      Expanded(
                        flex:1,
                        child: TextButton(
                            child: Text(
                              "/",
                              style: TextStyle(fontSize: 45, color: Colors.white70),
                            ),
                            onPressed: (){

                            }),
                      ),
                      Expanded(
                        flex:1,
                        child: TextButton(
                            child: Text(
                              "*",
                              style: TextStyle(fontSize: 45, color: Colors.white70),
                            ),
                            onPressed: (){}),
                      ),
                      Expanded(
                        flex:1,
                        child: TextButton(
                            child: Text(
                              "+",
                              style: TextStyle(fontSize: 45, color: Colors.white70),
                            ),
                            onPressed: (){
                              setState(() {
                                option = "+";
                                if (userInput.contains("+")){
                                  if (second == 0){
                                    // second =int.parse(userInput.substring(userInput.length-(userInput.length-index)));
                                    // answer = answer + sum;
                                    print("second is $second");
                                    userInput = userInput + '+';
                                    index = userInput.length;
                                  }
                                  else{
                                    first = first + second;
                                    print("first is $first");
                                    second =0;
                                  }
                                }
                                else{
                                  first = int.parse(userInput);
                                  // sum = int.parse(userInput);
                                  // answer = answer + sum;
                                  print("first is $first");
                                  userInput = userInput + '+';
                                  index = userInput.length;
                                }
                              answer = first + second;
                                second= 0;
                                print("second is $second");
                              print("answer is $answer");});
                            }),
                      ),
                      Expanded(
                        flex:1,
                        child: TextButton(
                            child: Text(
                              "-",
                              style: TextStyle(fontSize: 45, color: Colors.white70),
                            ),
                            onPressed: (){
                              // setState(() {
                              //   if (userInput.contains("+") || userInput.contains("-")){
                              //     sum =int.parse(userInput.substring(userInput.length-(userInput.length-index)));
                              //     answer = answer - sum;
                              //     print(answer);
                              //     userInput = userInput + '-';
                              //     index = userInput.length;
                              //   }
                              //   else{
                              //     sum = int.parse(userInput);
                              //     answer = answer - sum;
                              //     print(answer);
                              //     userInput = userInput + '-';
                              //     index = userInput.length;
                              //   }});
                            }),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 80, top: 300,bottom: 30),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(0),
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(0)
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),

                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                  flex:1,
                                  child: TextButton(
                                      child: Text(
                                        "7",
                                        style: TextStyle(fontSize: 45, color: Colors.black45),
                                      ),
                                      onPressed: (){
                                        setState((){
                                          if (userInput=='0'){
                                            userInput = '7';
                                          }
                                          else{
                                            userInput= userInput + '7';

                                          }
                                        });


                                      }),
                                ),
                                Expanded(
                                  flex:1,
                                  child: TextButton(
                                      child: Text(
                                          "8",
                                        style: TextStyle(fontSize: 45, color: Colors.black45),
                                      ),
                                      onPressed: (){
                                        setState((){
                                          if (userInput=='0'){
                                            userInput = '8';
                                          }
                                          else{
                                            userInput= userInput + '8';
                                            second =int.parse(userInput.substring(userInput.length-(userInput.length-index)));
                                            print("second is $second");
                                          }
                                        });
                                      }),
                                ),
                                Expanded(
                                  flex:1,
                                  child: TextButton(
                                      child: Text(
                                          "9",
                                        style: TextStyle(fontSize: 45, color: Colors.black45),
                                      ),
                                      onPressed: (){
                                        setState((){
                                          if (userInput=='0'){
                                            userInput = '9';
                                          }
                                          else{
                                            userInput= userInput + '9';
                                          }
                                        });
                                      }),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                  flex:1,
                                  child: TextButton(
                                      child: Text(
                                          "4",
                                        style: TextStyle(fontSize: 45, color: Colors.black45),
                                      ),
                                      onPressed: (){
                                        setState((){
                                          if (userInput=='0'){
                                            userInput = '4';
                                          }
                                          else{
                                            userInput= userInput + '4';
                                          }
                                        });
                                      }),
                                ),
                                Expanded(
                                  flex:1,
                                  child: TextButton(
                                      child: Text(
                                          "5",
                                        style: TextStyle(fontSize: 45, color: Colors.black45),
                                      ),
                                      onPressed: (){
                                        setState((){
                                          if (userInput=='0'){
                                            userInput = '5';
                                          }
                                          else{
                                            userInput= userInput + '5';
                                          }
                                        });
                                      }),
                                ),
                                Expanded(
                                  flex:1,
                                  child: TextButton(
                                      child: Text(
                                          "6",
                                        style: TextStyle(fontSize: 45, color: Colors.black45),
                                      ),
                                      onPressed: (){
                                        setState((){
                                          if (userInput=='0'){
                                            userInput = '6';
                                          }
                                          else{
                                            userInput= userInput + '6';
                                          }
                                        });
                                      }),
                                )

                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                  flex:1,
                                  child: TextButton(
                                      child: Text(
                                          "1",
                                        style: TextStyle(fontSize: 45, color: Colors.black45),
                                      ),
                                      onPressed: (){
                                        setState((){
                                          if (userInput=='0'){
                                            userInput = '1';
                                          }
                                          else{
                                            userInput= userInput + '1';
                                          }
                                        });
                                      }),
                                ),
                                Expanded(
                                  flex:1,
                                  child: TextButton(
                                      child: Text(
                                          "2",
                                        style: TextStyle(fontSize: 45, color: Colors.black45),
                                      ),
                                      onPressed: (){
                                        setState((){
                                          if (userInput=='0'){
                                            userInput = '2';
                                          }
                                          else{
                                            userInput= userInput + '2';
                                          }
                                        });
                                      }),
                                ),
                                Expanded(
                                  flex:1,
                                  child: TextButton(
                                      child: Text(
                                          "3",
                                        style: TextStyle(fontSize: 45, color: Colors.black45),
                                      ),
                                      onPressed: (){
                                        setState((){
                                          if (userInput=='0'){
                                            userInput = '3';
                                          }
                                          else{
                                            userInput= userInput + '3';
                                          }
                                        });
                                      }),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                Expanded(
                                  flex:1,
                                  child: TextButton(
                                      child: Text(
                                          ".",
                                        style: TextStyle(fontSize: 45, color: Colors.black45),
                                      ),
                                      onPressed: (){
                                        setState((){
                                          if (userInput=='0'){
                                            userInput = '0.';
                                          }
                                          else{
                                            userInput= userInput + '.';
                                          }
                                        });
                                      }),
                                ),
                                Expanded(
                                  flex:1,
                                  child: TextButton(
                                      child: Text(
                                          "0",
                                        style: TextStyle(fontSize: 45, color: Colors.black45),
                                      ),
                                      onPressed: (){
                                        setState((){
                                          if (userInput=='0'){
                                            userInput = '0';
                                          }
                                          else{
                                            userInput= userInput + '0';
                                          }
                                        });
                                      }),
                                ),
                                Expanded(
                                  flex:1,
                                  child: TextButton(
                                      child: Text(
                                          "=",
                                        style: TextStyle(fontSize: 45, color: Colors.black45),
                                      ),
                                      onPressed: (){
                                        setState(() {
                                          if (option =="+"){
                                            answer = first + second;
                                            second=0;
                                            first=answer;
                                          }
                                          // answer = first + second;
                                          // print("answer is $answer");
                                        });
                                      }),
                                )

                              ],
                            ),
                          )
                        ],
                      ),

                    ],
                  ),
                ),

              ),
            ],
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(

              height: 30,
              width: double.infinity,
              color: Colors.black,
              child: IconButton(
                icon: Icon(Icons.keyboard_arrow_up_rounded, color: Colors.white,),
                onPressed: (){

                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
