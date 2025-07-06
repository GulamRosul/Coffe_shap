import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rosul/constant/color.dart';

class ButtonWidget extends StatelessWidget {
  final String title;
  const ButtonWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Appcolor.normal,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          title,
          style: GoogleFonts.sora(fontSize: 25, color: Appcolor.whiteColor),
        ),
      ),
    );
  }
}
