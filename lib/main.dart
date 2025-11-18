import 'package:flutter/material.dart';
import 'package:strike_shop/screens/login.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Strike Shop',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue)
          .copyWith(secondary: Colors.blueAccent[400]),
          scaffoldBackgroundColor: const Color(0xFF111827),
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.black,   // ⬅️ navbar hitam
            foregroundColor: Colors.white,   // ⬅️ teks/icon putih
            elevation: 0,                    // optional: biar flat
          ),
        ),
        home: const LoginPage(),
      ),
    );
  }
}