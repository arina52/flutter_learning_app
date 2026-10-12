import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CourseTabs extends StatefulWidget {
  const CourseTabs({super.key});

  @override
  State<CourseTabs> createState() => _CourseTabsState();
}

class _CourseTabsState extends State<CourseTabs> {
  int selectedTab = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildTab('Lessons', 0),

          const SizedBox(width: 20),

          _buildTab('Description', 1),
        ],
      ),
    );
  }

  Widget _buildTab(String title, int index) {
    final isSelected = selectedTab == index;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedTab = index;
        });
      },
      child: SizedBox(
        width: index == 0 ? 100 : 110,
        child: Column(
          children: [
            Text(
              title,
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: isSelected
                    ? const Color(0xFFFF7401)
                    : const Color(0xFFD2D2D2),
                height: 1,
              ),
            ),

            const SizedBox(height: 12),

            if (isSelected)
              Container(
                width: 100,
                height: 2,
                color: const Color(0xFFFF7401),
              ),
          ],
        ),
      ),
    );
  }
}