import 'package:flutter/material.dart';
import 'package:javlon_aka_cripta/src/presentation/bitcoin_app/view/portfolio_view.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage(
              "assets/images/Character.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: 100.w,
            height: 45.h,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(164, 255, 255, 255),
                  Color.fromARGB(117, 255, 255, 255),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.centerLeft,
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(40),
                topLeft: Radius.circular(40),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  "Discover a new\n way to invest",
                  style: TextStyle(
                    color: const Color(0xff000000),
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Learn by building a portfolio crypto",
                  style: TextStyle(
                    color: const Color(0xff3C3C43),
                    fontWeight: FontWeight.w400,
                    fontSize: 18.sp,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PortfolioView(),
                      ),
                    );
                  },
                  child: Container(
                    width: 70.w,
                    height: 7.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      boxShadow: const [
                        BoxShadow(
                          color: Color(0xff000000),
                          offset: Offset(1, 1),
                          blurRadius: 2,
                        ),
                        BoxShadow(
                          color: Color(0xffffffff),
                          offset: Offset(-4, -4),
                          blurRadius: 3,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        "Get started",
                        style: TextStyle(
                          color: const Color.fromARGB(73, 0, 0, 0),
                          fontSize: 20.sp,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
