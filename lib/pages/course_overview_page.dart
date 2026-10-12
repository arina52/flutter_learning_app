
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/course_video_card.dart';
import '../widgets/course_details.dart';
import '../widgets/course_tabs.dart';
import '../widgets/course_lessons.dart';
import '../widgets/course_enroll_bar.dart';

class CourseOverviewPage extends StatelessWidget {
  const CourseOverviewPage({super.key});

  @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FBFF),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  Padding(
                    padding: const EdgeInsets.only(left: 11, top: 6),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.pop(context),
                          child: SizedBox(
                            width: 40,
                            height: 40,
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/images/arrow.svg',
                                width: 12.96,
                                height: 21.21,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Course Overview',
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF2C2C2C),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 44),

                  Padding(
                    padding: const EdgeInsets.only(
                      left: 36,
                      right: 22,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CourseVideoCard(),

                        const SizedBox(height: 34),

                        Text(
                          'React Front To back',
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: const Color(0xFF2C2C2C),
                            height: 1,
                          ),
                        ),

                        const SizedBox(height: 12),
                        const CourseDetails(),

                        const SizedBox(height: 20),
                        const CourseTabs(),
                        const SizedBox(height: 8),
                        const CourseLessons(),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // Bara fixa in partea de jos
            const Positioned(
              left: 16,
              right: 0,
              bottom: -2,
              child: CourseEnrollBar(),
            ),
          ],
        ),
      ),
    );
  }

}
