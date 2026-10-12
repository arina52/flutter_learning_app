
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CourseVideoCard extends StatelessWidget {
  const CourseVideoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 335 / 207,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                boxShadow: const [
                  BoxShadow(
                    color: Color(0x1A132C4A),
                    offset: Offset(0, 6),
                    blurRadius: 14,
                  ),
                ],
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                'assets/images/course-overview.png',
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Play
          GestureDetector(
            onTap: () {
              // Functionalitate ulterioara
            },
            child: Container(
              width: 54,
              height: 54,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Color(0x14132C4A),
                    offset: Offset(0, 2),
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Center(
                child: SvgPicture.asset(
                  'assets/images/play.svg',
                  width: 24,
                  height: 24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
