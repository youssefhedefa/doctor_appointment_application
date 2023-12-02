import 'package:doctor_appointment_application/core/helpers/assets_manager.dart';
import 'package:doctor_appointment_application/core/theming/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorImageWithText extends StatelessWidget {
  const DoctorImageWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        const Image(
          image: AssetImage(AssetsProvider.logoWithLowOpacity),
        ),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.white,
                Colors.white.withOpacity(0.0),
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4],
            ),
          ),
          child: const Image(
            image: AssetImage(AssetsProvider.doctorImage),
          ),
        ),
        Positioned(
          bottom: 30.h,
          child: SizedBox(
            width: MediaQuery.of(context).size.width - 15.w,
            child: Text(
              'Best Doctor Appointment App',
              textAlign: TextAlign.center,
              style: TextStylesProvider.onBoardingBlueSize32Bold.copyWith(
                height: 1.4,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
