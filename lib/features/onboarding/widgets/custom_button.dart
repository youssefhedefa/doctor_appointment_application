import 'package:doctor_appointment_application/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.buttonName});

  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){},
        child: Container(
          height: 50.h,
          width: 328.w,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: ColorsProvider.mainBlue,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            buttonName,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
    );
  }
}
