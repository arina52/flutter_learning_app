import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MeetupSection extends StatelessWidget {
  const MeetupSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375,
      height: 120,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Fundalul cardului
          Positioned(
            left: 20,
            top: 0,
            child: Container(
              width: 335,
              height: 120,
              decoration: BoxDecoration(
                color: const Color(0xFFEFE0FF),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.05),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
            ),
          ),

          // Cercul exterior
          Positioned(
            left: 244.67,
            top: 8.25,
            child: Container(
              width: 96.51,
              height: 96.51,
              decoration: BoxDecoration(
                color: const Color(0xFFF5ECFF)
                    .withValues(alpha: 0.56),
                shape: BoxShape.circle,
              ),
            ),
          ),

          // Cercul interior
          Positioned(
            left: 257.43,
            top: 21.01,
            child: Container(
              width: 71,
              height: 71,
              decoration: BoxDecoration(
                color: const Color(0xFFF8F2FF)
                    .withValues(alpha: 0.80),
                shape: BoxShape.circle,
              ),
            ),
          ),
          // Titlul Meetup
          Positioned(
            left: 41.42,
            top: 26.64, // 634.64 - 608
            child: Text(
              'Meetup',
              style: GoogleFonts.poppins(
                fontSize: 24.36,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF440687),
                height: 1,
              ),
            ),
          ),

          // Subtitlul
          Positioned(
            left: 42.74,
            top: 55.1, // 663.1 - 608
            child: Text(
              'Off-line exchange of learning experiences',
              maxLines: 1,
              softWrap: false,
              style: GoogleFonts.poppins(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF440687),
                height: 1,
              ),
            ),
          ),
          // Persoana cu parul portocaliu
          Positioned(
            left: 268.65,
            top: 20,
            child: SvgPicture.asset(
              'assets/images/avatar-1.svg',
              width: 51.11,
              height: 51.11,
              fit: BoxFit.contain,
            ),
          ),

          // Persoana cu parul negru
          Positioned(
            left: 254.45,
            top: 47.24, // 655.24 - 608
            child: SvgPicture.asset(
              'assets/images/avatar-2.svg',
              width: 35.31,
              height: 42.09,
              fit: BoxFit.contain,
            ),
          ),

          // Persoana cu parul alb
          Positioned(
            left: 298.67,
            top: 45.54,
            child: SvgPicture.asset(
              'assets/images/avatar-3.svg',
              width: 33.34,
              height: 43.86,
              fit: BoxFit.contain,
            ),
          ),


        ],
      ),
    );
  }
}
