import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<int> gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  bool player1 = true;
  String message = "";
  //Delay Effect
  Delay() {
    Future.delayed(const Duration(milliseconds: 1600), () {
      setState(() {
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0];
      });
    });
  }

  //
  checkWin() {
    if ((gameState[0] != 0) &&
        (gameState[0] == gameState[1]) &&
        (gameState[1] == gameState[2])) {
      // if any user Win update the message state
      setState(() {
        this.message = '${this.gameState[0]} wins';
        this.Delay();
      });
    } else if ((gameState[3] != 0) &&
        (gameState[3] == gameState[4]) &&
        (gameState[4] == gameState[5])) {
      setState(() {
        this.message = '${this.gameState[3]} wins';
        this.Delay();
      });
    } else if ((gameState[6] != 0) &&
        (gameState[6] == gameState[7]) &&
        (gameState[7] == gameState[8])) {
      setState(() {
        this.message = '${this.gameState[6]} wins';
        this.Delay();
      });
    } else if ((gameState[0] != 0) &&
        (gameState[0] == gameState[3]) &&
        (gameState[3] == gameState[6])) {
      setState(() {
        this.message = '${this.gameState[0]} wins';
        this.Delay();
      });
    } else if ((gameState[1] != 0) &&
        (gameState[1] == gameState[4]) &&
        (gameState[4] == gameState[7])) {
      setState(() {
        this.message = '${this.gameState[1]} wins';
        this.Delay();
      });
    } else if ((gameState[2] != 0) &&
        (gameState[2] == gameState[5]) &&
        (gameState[5] == gameState[8])) {
      setState(() {
        this.message = '${this.gameState[2]} wins';
        this.Delay();
      });
    } else if ((gameState[0] != 0) &&
        (gameState[0] == gameState[4]) &&
        (gameState[4] == gameState[8])) {
      setState(() {
        this.message = '${this.gameState[0]} wins';
        this.Delay();
      });
    } else if ((gameState[2] != 0) &&
        (gameState[2] == gameState[4]) &&
        (gameState[4] == gameState[6])) {
      setState(() {
        this.message = '${this.gameState[2]} wins';
        this.Delay();
      });
    } else if (!gameState.contains(0)) {
      setState(() {
        this.message = 'Game Draw';
        this.Delay();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50, top: 80),
            child: Container(
              height: 350,
              width: 400,
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            //    gameState(Circle());
                            if (gameState[0] == 0) {
                              if (player1) {
                                gameState[0] = 1;
                              } else {
                                gameState[0] = 2;
                              }
                              player1 = !player1;
                            }
                            print(checkWin());
                            print(gameState[0]);
                            print(message);
                          });
                        },
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            //color: Colors.blueGrey,
                            border: Border.all(
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: gameState[0] == 0
                              ? Empty()
                              : gameState[0] == 1
                                  ? Cross()
                                  : Circle(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        onTap: () {
                          setState(() {
                            if (gameState[3] == 0) {
                              if (player1) {
                                gameState[3] = 1;
                              } else {
                                gameState[3] = 2;
                              }
                              player1 = !player1;
                            }
                            print(checkWin());
                            print(gameState[3]);
                            print(message);
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            //color: Colors.blueGrey,

                            border: Border.all(
                              color: Colors.black,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: gameState[3] == 0
                              ? Empty()
                              : gameState[3] == 1
                                  ? Cross()
                                  : Circle(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        onTap: () {
                          setState(() {
                            if (gameState[6] == 0) {
                              if (player1) {
                                gameState[6] = 1;
                              } else {
                                gameState[6] = 2;
                              }
                              player1 = !player1;
                            }
                            print(checkWin());
                            print(gameState[6]);
                            print(message);
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            //  color: Colors.blueGrey,
                            border: Border.all(
                              color: Colors.black,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: gameState[6] == 0
                              ? Empty()
                              : gameState[6] == 1
                                  ? Cross()
                                  : Circle(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        onTap: () {
                          setState(() {
                            if (gameState[1] == 0) {
                              if (player1) {
                                gameState[1] = 1;
                              } else {
                                gameState[1] = 2;
                              }
                              player1 = !player1;
                            }
                            print(checkWin());
                            print(gameState[1]);
                            print(message);
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            //  color: Colors.blueGrey,
                            border: Border.all(
                              color: Colors.black,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: gameState[1] == 0
                              ? Empty()
                              : gameState[1] == 1
                                  ? Cross()
                                  : Circle(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        onTap: () {
                          setState(() {
                            if (gameState[4] == 0) {
                              if (player1) {
                                gameState[4] = 1;
                              } else {
                                gameState[4] = 2;
                              }
                              player1 = !player1;
                            }
                            print(checkWin());
                            print(gameState[4]);
                            print(message);
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            //  color: Colors.blueGrey,
                            border: Border.all(
                              color: Colors.black,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: gameState[4] == 0
                              ? Empty()
                              : gameState[4] == 1
                                  ? Cross()
                                  : Circle(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        onTap: () {
                          setState(() {
                            if (gameState[7] == 0) {
                              if (player1) {
                                gameState[7] = 1;
                              } else {
                                gameState[7] = 1;
                              }
                              player1 = !player1;
                            }
                            print(checkWin());
                            print(gameState[7]);
                            print(message);
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            //  color: Colors.blueGrey,
                            border: Border.all(
                              color: Colors.black,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: gameState[7] == 0
                              ? Empty()
                              : gameState[7] == 1
                                  ? Cross()
                                  : Circle(),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        onTap: () {
                          setState(() {
                            if (gameState[2] == 0) {
                              if (player1) {
                                gameState[2] = 1;
                              } else {
                                gameState[2] = 2;
                              }
                              player1 = !player1;
                            }
                            print(checkWin());
                            print(gameState[2]);
                            print(message);
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            //  color: Colors.blueGrey,
                            border: Border.all(
                              color: Colors.black,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: gameState[2] == 0
                              ? Empty()
                              : gameState[2] == 1
                                  ? Cross()
                                  : Circle(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        onTap: () {
                          setState(() {
                            if (gameState[5] == 0) {
                              if (player1) {
                                gameState[5] = 1;
                              } else {
                                gameState[5] = 2;
                              }
                              player1 = !player1;
                            }
                            print(checkWin());
                            print(gameState[5]);
                            print(message);
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            //  color: Colors.blueGrey,
                            border: Border.all(
                              color: Colors.black,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: gameState[5] == 0
                              ? Empty()
                              : gameState[5] == 1
                                  ? Cross()
                                  : Circle(),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        customBorder: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        onTap: () {
                          setState(() {
                            if (gameState[8] == 0) {
                              if (player1) {
                                gameState[8] = 1;
                              } else {
                                gameState[8] = 2;
                              }
                              player1 = !player1;
                            }
                            print(checkWin());
                            print(gameState[8]);
                            print(message);
                          });
                        },
                        child: Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            //  color: Colors.blueGrey,
                            border: Border.all(
                              color: Colors.black,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: gameState[8] == 0
                              ? Empty()
                              : gameState[8] == 1
                                  ? Cross()
                                  : Circle(),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Cross(),
                  Text('Player 1'),
                ],
              ),
              Column(
                children: [
                  Circle(),
                  Text('Player 2'),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlatButton(
                onPressed: () {
                  setState(() {
                    gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0];
                    player1 = !player1;
                    message = '';
                  });
                },
                child: Text(
                  "ReSet Game",
                ),
              ),
            ],
          ),
          Text(
            this.message,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}

class Empty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox();
  }
}

class Cross extends StatelessWidget {
  var container1 = new Container(
    // gray box
    child: new Center(
      child: new Transform(
        child: Container(
          width: 50,
          height: 10,
          decoration: BoxDecoration(
            //  color: Colors.blueGrey,
            border: Border.all(
              color: Colors.black,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        alignment: FractionalOffset.center,
        transform: new Matrix4.identity()..rotateZ(50 * 3.1415927 / 180),
      ),
    ),
  );
  var container2 = new Container(
    // gray box
    child: new Center(
      child: new Transform(
        child: Container(
          width: 50,
          height: 10,
          decoration: BoxDecoration(
            //  color: Colors.blueGrey,
            border: Border.all(
              color: Colors.black,
              width: 5,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        alignment: FractionalOffset.center,
        transform: new Matrix4.identity()..rotateZ(140 * 3.1415927 / 180),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: Stack(
        children: [
          container1,
          container2,
        ],
      ),
    );
  }
}

class Circle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(color: Colors.black, width: 10),
          borderRadius: BorderRadius.circular(50)),
    );
  }