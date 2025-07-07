import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
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
          // Background container
          SizedBox(height: height, width: width),

          // Top gradient background
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

          // Location & Search section
          Positioned(
            top: height * 0.08,
            left: width * 0.05,
            right: width * 0.05,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: GoogleFonts.sora(color: Appcolor.lighter),
                ),
                Row(
                  children: [
                    Text(
                      'Bilzen, Tanjungbalai',
                      style: GoogleFonts.sora(
                        color: Appcolor.normalActive,
                        fontSize: 20,
                      ),
                    ),
                    Icon(
                      Icons.keyboard_arrow_down,
                      color: Appcolor.normalActive,
                    ),
                  ],
                ),
                Gap(height * 0.015),
                SizedBox(
                  height: 70,
                  child: Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 65,
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              hintText: 'Search Coffee',
                              filled: true,
                              fillColor: Appcolor.normalActive,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Gap(10),
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: Appcolor.normal,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(Icons.tune, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // ✅ Banner Image Positioned
          Positioned(
            top: height * 0.26,

            left: width * 0.05,

            right: width * 0.05,
            child: Container(
              height: height * 0.20,

              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/image/bannerimg.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
