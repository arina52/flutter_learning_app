import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../pages/course_overview_page.dart';

class LearnedTodayCard extends StatelessWidget {
  const LearnedTodayCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 96,
    padding: const EdgeInsets.fromLTRB(16, 17, 16, 17),
    decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(12),
    boxShadow: const [
    BoxShadow(
    color: Color(0x12000000),
    blurRadius: 12,
    offset: Offset(0, 4),
    ),
    ],
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Text(
    'Learned today',
    style: GoogleFonts.poppins(
    fontSize: 12,
    color: const Color(0xFF858597),
    height: 1,
    ),
    ),
      GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const CourseOverviewPage(),
            ),
          );
        },
        child: Text(
          'My courses',
          style: GoogleFonts.poppins(
            fontSize: 12,
            color: const Color(0xFF3D5CFF),
            height: 1,
          ),
        ),
      ),
    ],
    ),
    const SizedBox(height: 8),
    Row(
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
    Text(
    '46min',
    style: GoogleFonts.poppins(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: const Color(0xFF1F1F39),
    height: 1,
    ),
    ),
    const SizedBox(width: 3),
    Padding(
    padding: const EdgeInsets.only(bottom: 1),
    child: Text(
    '/ 60min',
    style: GoogleFonts.poppins(
    fontSize: 10,
    color: const Color(0xFF858597),
    height: 1,
    ),
    ),
    ),
    ],
    ),
    const SizedBox(height: 9),
    LayoutBuilder(
    builder: (context, constraints) {
    return Stack(
    children: [
    Container(
    height: 6,
    decoration: BoxDecoration(
    color: const Color(0xFFF4F3FD),
    borderRadius: BorderRadius.circular(3),
    ),
    ),
    Container(
    width: constraints.maxWidth * (46 / 60),
    height: 6,
    decoration: BoxDecoration(
    gradient: const LinearGradient(
    colors: [Colors.white, Color(0xFFFF5106)],
    ),
    borderRadius: BorderRadius.circular(3),
    ),
    ),
    ],
    );
    },
    ),
    ],
    ),

    );
  }
}

