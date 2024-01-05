import 'package:calculater_app/controllers/calculator_controller.dart';
import 'package:calculater_app/widgets/line_separator.dart';
import 'package:calculater_app/widgets/main_result.dart';
import 'package:calculater_app/widgets/sub_result.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final calcController=Get.find<CalculatorController>();
class Muthresult extends StatelessWidget {
  const Muthresult({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() =>  Column(
      children: [
         SubResult( text: '${calcController.firstnumber}' ),
         SubResult( text: '${calcController.operation}' ),
         SubResult( text: '${calcController.secondnumber}' ),
         LineSeparator(),
         MainResultText( text: '${calcController.result}' ),

      ],
    ));
  }
}