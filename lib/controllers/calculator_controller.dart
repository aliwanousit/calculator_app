// ignore_for_file: constant_pattern_never_matches_value_type

import 'package:get/get.dart';

class CalculatorController extends GetxController{
  var firstnumber ='0'.obs;
  var secondnumber ='0'.obs;
  var result='0'.obs;
  var operation='+'.obs;

  resetAll(){
    firstnumber.value='0';
    secondnumber.value='0';
    operation.value='+';
    result.value='0';
  }

  changeNagativetoPositive(){
    if(result.startsWith('-')){
      result.value=result.value.replaceFirst('-', '');
    }
    else{
      result.value='-' + result.value;
    }
  }

  addNumber(String number){

    if(result.value=='0'){
     return result.value=number;
    }
    if(result.value=='-0'){
      result.value= '-' + result.value;
    }
    result.value=result.value+number;
  }

  addDecimalPoint(){
    if(result.contains('.')) return;

    if(result.startsWith('0.')){
      result.value='0.';
    }
    else{result.value=result.value + '.';}
  }

  selectOperation(String newOperation){
    operation.value=newOperation;
    firstnumber.value = result.value;
    result.value='0';
  }
  deletLastEntry(){
    if(result.value.replaceAll('-', '').length >1){
      result.value = result.value.substring(0,result.value.length);
    }
    else{result.value='0';}
  }
  calculatResult(){
    double num1= double.parse(firstnumber.value);
    double num2= double.parse(result.value);
    secondnumber.value= result.value;
    switch(operation.value){
      case '+':
         result.value="${num1 + num2}";
      break;   

      case '-':
         result.value="${num1 - num2}";
      break; 

      case 'X':
         result.value="${num1 * num2}";
      break; 

      case '/':
         result.value="${num1 / num2}";
      break; 
      
      default:
        return;
    }
  }
}