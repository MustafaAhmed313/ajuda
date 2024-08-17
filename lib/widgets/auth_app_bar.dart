import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

PreferredSizeWidget authAppBar() {
  return AppBar(
    backgroundColor: AppColors.white,
    title: Center(
      child: Container(
        color: AppColors.white,
        height: 40,
        child: const Image(image: AssetImage('assets/images/Logo.png'),
        ),
      ),
    ),
  );
}