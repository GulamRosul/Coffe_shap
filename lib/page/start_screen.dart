import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rosul/constant/color.dart';
import 'package:rosul/constant/image_string.dart';
import 'package:rosul/constant/text_string.dart';
import 'package:rosul/widget/button_widget.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          SizedBox(height: height, width: width),
          SizedBox(
            width: width,
            child: Image.asset(startPageImage, fit: BoxFit.cover),
          ),

          Positioned(
            bottom: height * 0.05,
            child: SizedBox(
              width: width,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 0.06),

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      startPageTitle,
                      style: GoogleFonts.sora(
                        textStyle: TextStyle(
                          fontSize: 35,
                          color: whiteColor,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Gap(10),
                    Text(
                      startPageSubTitle,
                      style: GoogleFonts.sora(
                        textStyle: TextStyle(color: startPageSubTitleColor),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Gap(20),
                    ButtonWidget(title: 'Get Started'),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
