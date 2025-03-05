import 'package:blog_app_clean_arch/core/secrets/app_secrets.dart';
import 'package:blog_app_clean_arch/core/theme/theme.dart';
import 'package:blog_app_clean_arch/features/auth/presentation/pages/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(anonKey: AppSecrets.apiKey, url: AppSecrets.baseUrl);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Blog app',
      theme: AppTheme.darkThemeMode,
      home: const SignInPage(),
    );
  }
}
