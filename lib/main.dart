import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ueu_libapp/pages/edit_profile_page.dart';
import 'package:ueu_libapp/pages/home/main_page.dart';
import 'package:ueu_libapp/pages/product_page.dart';
import 'package:ueu_libapp/pages/sign_in_page.dart';
import 'package:ueu_libapp/pages/sign_up_page.dart.dart';
import 'package:ueu_libapp/pages/splash_page.dart';
import 'package:ueu_libapp/providers/auth_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/product': (context) => ProductPage(),
        },
      ),
    );
  }
}
