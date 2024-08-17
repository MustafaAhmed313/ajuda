import 'package:donation_app/constants/app_colors.dart';
import 'package:donation_app/constants/app_font_sizes.dart';
import 'package:donation_app/constants/app_font_weights.dart';
import 'package:donation_app/widgets/auth_app_bar.dart';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: authAppBar(),
      body: Container(
        color: AppColors.white,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.primary300,
                borderRadius: BorderRadius.circular(18)
              ),
              width: 327,
              height: 52,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    color: AppColors.primary300,
                    width: 20,
                    height: 20,
                    child: const Image(image: AssetImage('assets/images/google.png') , fit: BoxFit.cover)
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    'Sign in with google',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: AppFontSizes.num16,
                      fontWeight: AppFontWeights.semiBold
                    )
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            const Text(
              'Or' ,
              style: TextStyle(
                color: AppColors.gray500,
                fontSize: AppFontSizes.num16,
                fontWeight: AppFontWeights.medium
              )
            ),
          ],
        ),
      ),
    );
  }
}
