import 'package:blog_app/core/routes/allRoutes.dart';
import 'package:blog_app/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  await Supabase.initialize(
    url: 'https://etvrxeggvvshycfnctnq.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImV0dnJ4ZWdndnZzaHljZm5jdG5xIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDY5NjMzNjAsImV4cCI6MjA2MjUzOTM2MH0.dvsxEiby5Q_UWPpjBdluw9lnwqFU9VHRhg-cagiUkJ0',
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Blog App',
      theme: AppTheme.darkThemeMode,
      routerConfig: router,
      // home: const SignUpPage(),
      // home: const LogInPage(),
    );
  }
}
