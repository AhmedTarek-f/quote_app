import 'package:flutter/material.dart';
import 'package:intern2grow_quote_app/core/app_router.dart';

void main() {
  runApp(const QuoteApp());
}

class QuoteApp extends StatelessWidget {
  const QuoteApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
     routerConfig: AppRouter.router,
    );
  }
}

