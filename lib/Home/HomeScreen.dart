import 'package:flutter/material.dart';
import 'package:numerical_project/Main/MainScreen.dart';
import 'package:numerical_project/Matrix/MatrixView.dart';
import 'package:numerical_project/Theme/MyTheme.dart';
import 'package:percent_indicator/percent_indicator.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = " home screen ";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  bool _active1 = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/background.jpg',),
              fit: BoxFit.cover,
          ),
        //color: MyTheme.primaryColor,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: SingleChildScrollView(
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Center(
                        child: InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, MatrixScreen.routeName);
                          },
                          /*child: Image.asset("assets/images/Matrices.png")*/
                          child: CircularPercentIndicator(
                            radius: 200.0,
                            lineWidth: 20.0,
                            animation: true,
                            percent: 1.0,
                            center: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 20, right: 20),
                                child: Text(
                                  "Matrices",
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'pacifico',
                                  ),
                                ),
                              ),
                            ),
                            circularStrokeCap: CircularStrokeCap.round,
                            progressColor: _active1 ? Colors.black : MyTheme.primaryColor,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Center(
                      child: InkWell(
                        onTap: (){
                          Navigator.pushNamed(context, MainScreen.routeName);
                        },
                        child: CircularPercentIndicator(
                          radius: 200.0,
                          lineWidth: 20.0,
                          animation: true,
                          percent: 1.0,
                          center: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20, right: 20),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Non Liner",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'pacifico',
                                    ),
                                  ),
                                  Text(
                                    "Equation",
                                    style: TextStyle(
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'pacifico',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          circularStrokeCap: CircularStrokeCap.round,
                          progressColor: _active1 ? Colors.black : MyTheme.primaryColor,
                          backgroundColor: Colors.white,
                        ),
                      ),
                    ),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
