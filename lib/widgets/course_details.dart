import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseDetails extends StatelessWidget {
  const CourseDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 335,
      height: 24,
      child: Row(
        children: [
          // Clock
          SvgPicture.asset(
            'assets/images/clock.svg',
            width: 14.28,
            height: 14.28,
          ),

          const SizedBox(width: 4),

          // Durata cursului
          Text(
            '6h 30min',
            style: GoogleFonts.roboto(
              fontSize: 14.28,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF8C8C8C),
              height: 1,
            ),
          ),

          const SizedBox(width: 8),

          // Separator
          Container(
            width: 2,
            height: 2,
            decoration: const BoxDecoration(
              color: Color(0xFF8C8C8C),
              shape: BoxShape.circle,
            ),
          ),

          const SizedBox(width: 8),

          // Numarul lectiilor
          Text(
            '7 lessons',
            style: GoogleFonts.roboto(
              fontSize: 14.28,
              fontWeight: FontWeight.w400,
              color: const Color(0xFF8C8C8C),
              height: 1,
            ),
          ),

          // Impinge ratingul la capatul din dreapta
          const Spacer(),

          // Rating
          Container(
            width: 54,
            height: 24,
            decoration: BoxDecoration(
              color: const Color(0xFFEAF4FF),
              borderRadius: BorderRadius.circular(8),
            ),
            alignment: Alignment.center,
            child: SvgPicture.asset(
              'assets/images/star.svg',
              width: 43,
              height: 20,
            ),
          ),
        ],
      ),
    );
  }
}