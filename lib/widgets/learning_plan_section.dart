
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LearningPlanSection extends StatelessWidget {
  const LearningPlanSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Learning Plan',
            style: GoogleFonts.poppins(
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF1F1F39),
              height: 1,
            ),
          ),

          const SizedBox(height: 16),

          Container(
            width: double.infinity,
            height: 133,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 25,
            ),
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
            child: Column(
              children: [
                _buildProgressRow(
                  image: 'assets/images/progress.png',
                  title: 'Packaging Design',
                  completed: '40',
                  total: '/48',
                ),

                const SizedBox(height: 21),

                _buildProgressRow(
                  image: 'assets/images/progress2.png',
                  title: 'Product Design',
                  completed: '6',
                  total: '/24',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProgressRow({
    required String image,
    required String title,
    required String completed,
    required String total,
  }) {
    return Row(
      children: [
        Image.asset(
          image,
          width: 18,
          height: 18,
        ),

        const SizedBox(width: 13),

        Expanded(
          child: Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF1F1F39),
              height: 1,
            ),
          ),
        ),

        const SizedBox(width: 8),

        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: completed,
                style: const TextStyle(
                  color: Color(0xFF1F1F39),
                ),
              ),
              TextSpan(
                text: total,
                style: const TextStyle(
                  color: Color(0xFFB8B8D2),
                ),
              ),
            ],
          ),
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 1,
          ),
        ),
      ],
    );
  }
}
