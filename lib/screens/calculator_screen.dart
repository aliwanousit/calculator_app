import 'package:calculater_app/controllers/calculator_controller.dart';
import 'package:calculater_app/widgets/calc_button.dart';
import 'package:calculater_app/widgets/muthresult.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CalculatorScreen extends StatelessWidget {

final calccontroller=Get.put(CalculatorController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
        
          child: Column(
            children: [
              
              Expanded(
                child: Container(),
              ),

            const  Muthresult(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: 'AC',
                    bgColor:const Color(0xffA5A5A5 ),
                    onPressed: () => calccontroller.resetAll(),
                  ),
                  CalculatorButton( 
                    text: '+/-',
                    bgColor:const Color(0xffA5A5A5 ),
                    onPressed: () => calccontroller.changeNagativetoPositive(),
                  ),
                  CalculatorButton( 
                    text: 'del',
                    bgColor:const Color(0xffA5A5A5 ),
                    onPressed: () => calccontroller.deletLastEntry(),
                  ),
                  CalculatorButton( 
                    text: '/',
                    bgColor:const Color(0xffF0A23B ),
                    onPressed: () => calccontroller.selectOperation('/'),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '7',
                    onPressed: () => calccontroller.addNumber('7'),
                  ),
                  CalculatorButton( 
                    text: '8',
                    onPressed: () => calccontroller.addNumber('8'),
                  ),
                  CalculatorButton( 
                    text: '9',
                    onPressed: () => calccontroller.addNumber('9'),
                  ),
                  CalculatorButton( 
                    text: 'X',
                    bgColor:const Color(0xffF0A23B ),
                    onPressed: () => calccontroller.selectOperation('X'),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '4', 
                    onPressed: () => calccontroller.addNumber('4'),
                  ),
                  CalculatorButton( 
                    text: '5', 
                    onPressed: () => calccontroller.addNumber('5'),
                  ),
                  CalculatorButton( 
                    text: '6', 
                    onPressed: () => calccontroller.addNumber('6'),
                  ),
                  CalculatorButton( 
                    text: '-',
                    bgColor:const Color(0xffF0A23B ),
                    onPressed: () => calccontroller.selectOperation('-'),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '1', 
                    onPressed: () => calccontroller.addNumber('1'),
                  ),
                  CalculatorButton( 
                    text: '2', 
                    onPressed: () => calccontroller.addNumber('2'),
                  ),
                  CalculatorButton( 
                    text: '3', 
                    onPressed: () => calccontroller.addNumber('3'),
                  ),
                  CalculatorButton(
                    text: '+',  
                    bgColor:const Color(0xffF0A23B ),
                    onPressed: () => calccontroller.selectOperation('+'),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '0', 
                    big: true,
                    onPressed: () => calccontroller.addNumber('0'),
                  ),
                  CalculatorButton( 
                    text: '.', 
                    onPressed: () => calccontroller.addDecimalPoint(),
                  ),
                  CalculatorButton( 
                    text: '=',
                    bgColor:const Color(0xffF0A23B ),
                    onPressed: () => calccontroller.calculatResult(),
                  ),
                ],
              ),
            ],
          ),
        ),
      )
   );
  }
}