import 'package:flutter/material.dart';
import 'package:javlon_aka_cripta/src/presentation/bitcoin_app/view/welcome.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (p0, p1, p2) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Welcome(),
      ),
    );
  }
}
