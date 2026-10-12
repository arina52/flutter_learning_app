import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 214,
          color: const Color(0xFF3D5CFF),
        ),
        SafeArea(
          bottom: false,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 24),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi, Kristin',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          height: 1,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        "Let's start learning",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(
                  'assets/images/Icon.svg',
                  width: 36,
                  height: 50,
                  fit: BoxFit.contain,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

