import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rosul/constant/color.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height * 0.3,
            width: width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff313131),
                  Color(0xff111111),
                  Color(0xff111111),
                ],
              ),
            ),
          ),
          Positioned(
            top: height * 0.08,
            left: width * 0.05,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lacation',
                  style: GoogleFonts.sora(color: Appcolor.lighter),
                ),
                Text(
                  'Bilzen Tanjungbalai',
                  style: GoogleFonts.sora(
                    color: Appcolor.normalActive,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
