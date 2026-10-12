import 'package:flutter/material.dart';
import '../widgets/home_header.dart';
import '../widgets/ads_section.dart';
import '../widgets/learning_plan_section.dart';
import '../widgets/meetup_section.dart';
import '../widgets/learned_today_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 249,
              child: Stack(
                children: [
                  const HomeHeader(),
                  const Positioned(
                    top: 137,
                    left: 20,
                    right: 20,
                    child: LearnedTodayCard(),
                  ),
                ],
              ),
            ),
            const AdsSection(),
            const SizedBox(height: 10),
            const LearningPlanSection(),
            const SizedBox(height: 14),
            const MeetupSection(),
          ],
        ),
      ),
    );
  }
}

