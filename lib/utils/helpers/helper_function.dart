import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HelperFunction {
  static Color? getColor(String val) {
    if (val == "Green") {
      return Colors.green;
    } else if (val == "Red") {
      return Colors.red;
    } else if (val == "Blue") {
      return Colors.blue;
    } else if (val == "Grey") {
      return Colors.grey;
    } else if (val == "Purple") {
      return Colors.purple;
    } else if (val == "Black") {
      return Colors.black;
    } else if (val == "White") {
      return Colors.white;
    }
    return null;
  }

  static void showSnackBar(String msg) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(
        content: Text(msg),
      ),
    );
  }

  static void showAlert(String title, String msg) {
    showDialog(
      context: Get.context!,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(msg),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context,Widget screen){
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen),);
  }

  static String truncateText(String text, int maxLength){
    if(text.length <= maxLength){
      return text;
    }
    else {
      return '${text.substring(0,maxLength)}';
    }
  }

  static bool isDarkMode(BuildContext context){
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize(){
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth(){
    return MediaQuery.of(Get.context!).size.width;
  }

  static String getFormattedDate(DateTime date,{String format = 'dd-MMM-yyyy'}){
    return DateFormat(format).format(date);
  }

  static List<Widget> wrapWidget(List <Widget> widget,int rowSize) {
    final wrappedList = <Widget>[];
    for( var i =0;i<widget.length;i+= rowSize ){
      final rowChildren = widget.sublist(i , i + rowSize > widget.length ? widget.length : i + rowSize);
    }
    return wrappedList;
  }
}
