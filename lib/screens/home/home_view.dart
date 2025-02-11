import 'package:flutter/material.dart';
import 'package:life/common/app_fonts.dart';

/// View for [HomeView].
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(
            fontSize: 20,
            fontFamily: AppFonts.fontRegular,
          ),
        ),
      ),
    );
  }
}
