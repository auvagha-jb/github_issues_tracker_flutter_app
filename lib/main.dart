import 'package:flutter/material.dart';
import 'package:github_issue_tracker/ui/themes/theme.dart';
import 'package:github_issue_tracker/ui/utils/app_router.dart';
import 'package:github_issue_tracker/ui/views/home_view/home_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GitHub Issues',
      theme: AppTheme.getTheme(),
      home: HomeView(),
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}