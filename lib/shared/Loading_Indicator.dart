import 'package:flutter/material.dart';
import 'package:news_app/shared/app_theme.dart';

class LoadinIndicator extends StatelessWidget {
  const LoadinIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
