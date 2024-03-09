import 'package:flutter/material.dart';
import 'package:numerical_project/Calculator/CalculatorScreenView.dart';
import 'package:numerical_project/Form/FormScreen.dart';
import 'package:numerical_project/Home/HomeScreen.dart';
import 'package:numerical_project/Main/MainScreen.dart';
import 'package:numerical_project/Matrix/MatrixView.dart';
import 'package:numerical_project/Provider/MatricesProvider.dart';
import 'package:numerical_project/Result/MatricesResultScreen.dart';
import 'package:numerical_project/Result/ResultScreen.dart';
import 'package:numerical_project/Theme/MyTheme.dart';
import 'package:provider/provider.dart';

import 'Provider/NonlinearEquationsProvider.dart';

void main (){
  runApp(MultiProvider(
      providers :[
        ChangeNotifierProvider<NonlinearEquationsProvider>(create: (context) => NonlinearEquationsProvider(), ),
        ChangeNotifierProvider<MatricesProvider>(create: (context) => MatricesProvider(),),
      ] ,
      child: MyApp()
  ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomeScreen.routeName :(_) => HomeScreen(),
        MainScreen.routeName :(_) => MainScreen(),
        FormScreen.routeName :(_) => FormScreen(),
        CalculatorScreen.routeName :(_) => CalculatorScreen(),
        ResultScreen.routeName : (_) => ResultScreen(),
        MatrixScreen.routeName :(_) => MatrixScreen(),
        MatricesResultScreen.routeName :(_) => MatricesResultScreen(),
      },
      theme: MyTheme.themeData,
      initialRoute: HomeScreen.routeName,

    );

  }
}
