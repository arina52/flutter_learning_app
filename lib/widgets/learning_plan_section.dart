import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LearningPlanSection extends StatelessWidget {
  const LearningPlanSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 375,
      height: 181,
      child: Stack(
        children: [
          Positioned(
            left: 20,
            top: 16,
            child: Text(
              'Learning Plan',
              maxLines: 1,
              softWrap: false,
              overflow: TextOverflow.visible,
              style: GoogleFonts.poppins(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF1F1F39),
                height: 1,
              ),
            ),
          ),

          // Cardul alb
          Positioned(
            left: 20,
            top: 48,
            child: Container(
              width: 335,
              height: 133,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.04),
                    blurRadius: 12,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
            ),
          ),

          // Primul rând
          Positioned(
            left: 36,
            top: 74,
            child: Image.asset(
              'assets/images/progress.png',
              width: 18,
              height: 18,
            ),
          ),

          Positioned(
            left: 67,
            top: 73,
            child: Text(
              'Packaging Design',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF1F1F39),
                height: 1,
              ),
            ),
          ),

          Positioned(
            left: 297.1,
            top: 74,
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: '40',
                    style: TextStyle(color: Color(0xFF1F1F39)),
                  ),
                  const TextSpan(
                    text: '/48',
                    style: TextStyle(color: Color(0xFFB8B8D2)),
                  ),
                ],
              ),
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1,
              ),
            ),
          ),

          // Al doilea rând
          Positioned(
            left: 36,
            top: 113,
            child: Image.asset(
              'assets/images/progress2.png',
              width: 18,
              height: 18,
            ),
          ),

          Positioned(
            left: 67,
            top: 112,
            child: Text(
              'Product Design',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF1F1F39),
                height: 1,
              ),
            ),
          ),

          Positioned(
            right: 36,
            top: 112,
            child: Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: '6',
                    style: TextStyle(color: Color(0xFF1F1F39)),
                  ),
                  const TextSpan(
                    text: '/24',
                    style: TextStyle(color: Color(0xFFB8B8D2)),
                  ),
                ],
              ),
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1,
              ),
            ),
          ),
          Positioned(
            left: 169.36,
            top: 150, // 563 - 413
            child: Text(
              'more',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                height: 1,
                color: const Color(0xFF1F1F39).withValues(alpha: 0.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
