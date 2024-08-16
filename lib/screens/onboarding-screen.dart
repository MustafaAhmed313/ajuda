import 'package:donation_app/constants/app_colors.dart';
import 'package:donation_app/constants/app_font_sizes.dart';
import 'package:donation_app/constants/app_font_weights.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Image(image: AssetImage('assets/images/Logo.png')),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const Column(
                  children: [
                    Image(image: AssetImage('assets/images/onboarding.png'), fit: BoxFit.cover),
                    SizedBox(height: 50),
                    SizedBox(
                      width: 327,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Donation made Easy',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: AppFontSizes.num18,
                              fontWeight: AppFontWeights.semiBold,

                            ),
                          ),
                          SizedBox(height: 10),
                          Text('Ajuda is a platform for philanthropists to make donations to various social programmes and charities around the world.',
                            style: TextStyle(
                              color: AppColors.black,
                              fontSize: AppFontSizes.num16,
                              fontWeight: AppFontWeights.regular
                            )
                          ),
                        ],
                      )
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {

                },
                child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.primary300,
                        borderRadius: BorderRadius.circular(18)
                    ),
                    width: 144,
                    height: 40,
                    child: const Center(
                        child: Text('Start donating' ,
                          style: TextStyle(
                              color:  AppColors.white,
                              fontSize: AppFontSizes.num14,
                              fontWeight: AppFontWeights.medium
                          ),
                        )
                    )
                ),
              )
            ],
          )
        )
    );
  }
}
