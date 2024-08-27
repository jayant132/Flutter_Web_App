import 'package:flutter/material.dart';
import 'package:webapplication/utils/colors.dart';

ButtonStyle borderedButtonStyle = ButtonStyle(
    elevation: MaterialStateProperty.all(0),
    backgroundColor:
        MaterialStateProperty.all(const Color.fromARGB(255, 219, 211, 211)),
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
      side: BorderSide(color: AppColors.primary),
      borderRadius: BorderRadius.circular(10),
    )));
