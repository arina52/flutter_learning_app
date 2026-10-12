import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../pages/course_overview_page.dart';

class AdsSection extends StatelessWidget {
  const AdsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 154,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SizedBox(
            width: 510, // 249 + 12 + 249
            height: 154,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: SizedBox(
                    width: 249,
                    height: 154,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        // Fundalul albastru
                        Container(
                          width: 249,
                          height: 154,
                          decoration: BoxDecoration(
                            color: const Color(0xFFCEECFE),
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),

                        // Ilustratia cu overflow vizibil
                        Positioned(
                          left: 134.49,
                          top: 13.40,
                          child: SvgPicture.asset(
                            'assets/images/ad-1.svg',
                            width: 118.69,
                            height: 134.22,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Titlul este deasupra ambelor carduri, dar se deplaseaza cu ele.
                Positioned(
                  left: 18.15,
                  top: 19.5,
                  child: SizedBox(
                    width: 277,
                    height: 24,
                    child: Text(
                      'What do you want to learn today ?',
                      maxLines: 1,
                      softWrap: false,
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xFF1F1F39),
                        height: 1,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 276, // 249 + 12
                  top: 0,
                  child: Container(
                    width: 249,
                    height: 154,
                    decoration: BoxDecoration(
                      color: const Color(0xFFCEECFE),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    clipBehavior: Clip.antiAlias,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 20,
                          top: 25.75,
                          child: SvgPicture.asset(
                            'assets/images/ad-2.svg',
                            height: 117.49,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),


                Positioned(
                  left: 18.15,
                  top: 104.5,
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CourseOverviewPage(),
                        ),
                      );
                    },
                    child: Container(
                      width: 85,
                      height: 31,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF6905),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Text(
                        'Get Started',
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          height: 1,
                        ),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

