import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseLessons extends StatelessWidget {
  const CourseLessons({super.key});

  @override
  Widget build(BuildContext context) {
    final lessons = [
      ('Introduction to React', '04:28 min'),
      ('Understanding React', '06:12 min'),
      ('Create first React project', '43:58 min'),
      ('Build React', '26:18 min'),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: List.generate(lessons.length, (index) {
          final isActive = index == 0;
          final isDisabled = index == 3;

          return Padding(
            padding: const EdgeInsets.only(bottom: 27),
            child: Row(
                children: [
                  // Buton Play - 42x42
                  Container(
                    width: 42,
                    height: 42,
                    decoration: BoxDecoration(
                      color: isActive
                          ? const Color(0xFFFF7401)
                          : Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: isActive
                          ? []
                          : [
                        BoxShadow(
                          color: const Color(0xFF132C4A)
                              .withValues(alpha: 0.06),
                          blurRadius: 12,
                          offset: const Offset(0, 6),
                        ),
                      ],
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/play.svg',
                        width: 20,
                        height: 20,
                        colorFilter: ColorFilter.mode(
                          isActive
                              ? Colors.white
                              : const Color(0xFFFF7401),
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(width: 24),

                  // Titlu si durata
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          lessons[index].$1,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xFF2C2C2C),
                            height: 1,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          lessons[index].$2,
                          style: GoogleFonts.roboto(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFFAEAEAE),
                            height: 1,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(width: 8),

                  // Sageata din dreapta
                  SvgPicture.asset(
                    'assets/images/arrow-right.svg',
                    width: 7.07,
                    height: 14.5,
                  ),
                ],
              ),

          );
        }),
      ),
    );
  }
}