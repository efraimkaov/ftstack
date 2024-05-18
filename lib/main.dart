import 'package:flutter/material.dart';

void main() => runApp(const LayoutBuilderExampleApp());

class LayoutBuilderExampleApp extends StatelessWidget {
  const LayoutBuilderExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LayoutBuilderExample(),
    );
  }
}

class LayoutBuilderExample extends StatelessWidget {
  const LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            double whiteHeight = constraints.maxHeight / 18;
            double blackHeight = whiteHeight / 1.25;
            if (constraints.maxWidth > constraints.maxHeight) {
              return Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.red,
                    ),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      color: Colors.yellow,
                    ),
                  ],
                ),
              );
            } else {
              return Stack(
                children: [
                  Positioned(
                    top: whiteHeight * 0,
                    left: constraints.maxWidth / 7,
                    width: constraints.maxWidth / 7 * 6,
                    height: whiteHeight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        border: Border(
                          top: BorderSide(
                            color: Colors.black,
                            width: whiteHeight / 50,
                          ),
                          right: BorderSide(
                            color: Colors.black,
                            width: constraints.maxWidth / 100,
                          ),
                          bottom: BorderSide(
                            color: Colors.black,
                            width: whiteHeight / 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: whiteHeight * 1,
                    left: constraints.maxWidth / 7,
                    width: constraints.maxWidth / 7 * 6,
                    height: whiteHeight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        border: Border(
                          top: BorderSide(
                            color: Colors.black,
                            width: whiteHeight / 50,
                          ),
                          right: BorderSide(
                            color: Colors.black,
                            width: constraints.maxWidth / 100,
                          ),
                          bottom: BorderSide(
                            color: Colors.black,
                            width: whiteHeight / 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: whiteHeight * 2,
                    left: constraints.maxWidth / 7,
                    width: constraints.maxWidth / 7 * 6,
                    height: whiteHeight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        border: Border(
                          top: BorderSide(
                            color: Colors.black,
                            width: whiteHeight / 50,
                          ),
                          right: BorderSide(
                            color: Colors.black,
                            width: constraints.maxWidth / 100,
                          ),
                          bottom: BorderSide(
                            color: Colors.black,
                            width: whiteHeight / 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: whiteHeight * 17,
                    left: constraints.maxWidth / 7,
                    width: constraints.maxWidth / 7 * 6,
                    height: whiteHeight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade100,
                        border: Border(
                          top: BorderSide(
                            color: Colors.black,
                            width: whiteHeight / 50,
                          ),
                          right: BorderSide(
                            color: Colors.black,
                            width: constraints.maxWidth / 100,
                          ),
                          bottom: BorderSide(
                            color: Colors.black,
                            width: whiteHeight / 50,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: whiteHeight * 1 - blackHeight / 2,
                    left: constraints.maxWidth / 7,
                    width: constraints.maxWidth / 7 * 3,
                    height: blackHeight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        border: Border(
                          top: BorderSide(
                            color: Colors.black,
                            width: whiteHeight / 25,
                          ),
                          right: BorderSide(
                            color: Colors.black,
                            width: constraints.maxWidth / 100,
                          ),
                          bottom: BorderSide(
                            color: Colors.black,
                            width: whiteHeight / 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: whiteHeight * 2 - blackHeight / 2,
                    left: constraints.maxWidth / 7,
                    width: constraints.maxWidth / 7 * 3,
                    height: blackHeight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        border: Border(
                          top: BorderSide(
                            color: Colors.black,
                            width: whiteHeight / 25,
                          ),
                          right: BorderSide(
                            color: Colors.black,
                            width: constraints.maxWidth / 100,
                          ),
                          bottom: BorderSide(
                            color: Colors.black,
                            width: whiteHeight / 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: whiteHeight * 0,
                    left: 0,
                    width: constraints.maxWidth / 7 * 1,
                    height: constraints.maxHeight,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        border: Border(
                          right: BorderSide(
                            color: Colors.grey.shade700,
                            width: constraints.maxWidth / 200,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
