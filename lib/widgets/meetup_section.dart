
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MeetupSection extends StatelessWidget {
  const MeetupSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        width: double.infinity,
        height: 120,
        child: Container(
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
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Stack(
                clipBehavior: Clip.hardEdge,
                children: [
                  // Cercul exterior
                  Positioned(
                    right: 13.82,
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
                    right: 26.57,
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
                    left: 21.42,
                    top: 26.64,
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
                    left: 22.74,
                    top: 55.1,
                    right: 12,
                    child: Text(
                      'Off-line exchange of learning experiences',
                      maxLines: 1,
                      softWrap: false,
                      overflow: TextOverflow.clip,
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xFF440687),
                        height: 1,
                      ),
                    ),
                  ),

                  // Grupul de personaje
                  Positioned(
                    right: 23,
                    top: 20,
                    child: SizedBox(
                      width: 86,
                      height: 70,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          // Persoana cu parul portocaliu
                          Positioned(
                            left: 23.20,
                            top: 0,
                            child: SvgPicture.asset(
                              'assets/images/avatar-1.svg',
                              width: 51.11,
                              height: 51.11,
                              fit: BoxFit.contain,
                            ),
                          ),

                          // Persoana cu parul negru
                          Positioned(
                            left: 9,
                            top: 27.24,
                            child: SvgPicture.asset(
                              'assets/images/avatar-2.svg',
                              width: 35.31,
                              height: 42.09,
                              fit: BoxFit.contain,
                            ),
                          ),

                          // Persoana cu parul alb
                          Positioned(
                            left: 53.22,
                            top: 25.54,
                            child: SvgPicture.asset(
                              'assets/images/avatar-3.svg',
                              width: 33.34,
                              height: 43.86,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
