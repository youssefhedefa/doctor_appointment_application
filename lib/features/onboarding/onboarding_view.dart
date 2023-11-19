import 'package:doctor_appointment_application/core/helpers/assets_manager.dart';
import 'package:doctor_appointment_application/core/theming/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'widgets/doctor_image_with_text.dart';
import 'widgets/custom_button.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 46.0.h),
          child: Column(
            children: [
              Image(
                width: 140.w,
                height: 38.h,
                image: const AssetImage(AssetsManager.logo),
              ),
              SizedBox(
                height: 30.h,
              ),
              const DoctorImageWithText(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                child: Column(
                  children: [
                    Text(
                      'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                      textAlign: TextAlign.center,
                      style: TextStylesProvider.descriptionGreyText,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const CustomTextButton(
                      buttonName: 'Get Started',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
