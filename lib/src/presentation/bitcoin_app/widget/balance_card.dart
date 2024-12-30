import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BalanceCard extends StatelessWidget {
  const BalanceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 85.w,
        height: 24.h,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [
              Color(0xff00AFFB),
              Color(0xff0866D7),
            ],
            end: Alignment.bottomRight,
            begin: Alignment.topCenter,
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 15.sp,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "60,479.56\n",
                          style: TextStyle(
                            color: const Color.fromARGB(104, 255, 255, 255),
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: "Your balance is equavalent",
                          style: TextStyle(
                            color: const Color.fromARGB(108, 255, 255, 255),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: EdgeInsets.only(top: 20.sp),
                    child: Container(
                      width: 11.w,
                      height: 3.3.h,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(96, 255, 255, 255),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          "􀄥 USD",
                          style: TextStyle(
                            color: const Color(0xffFFFFFF),
                            fontSize: 15.sp,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "10,349.26\n",
                              style: TextStyle(
                                color: const Color.fromARGB(104, 255, 255, 255),
                                fontSize: 20.sp,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            TextSpan(
                              text: "Monthly profit",
                              style: TextStyle(
                                color: const Color.fromARGB(108, 255, 255, 255),
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: EdgeInsets.only(top: 20.sp),
                      child: Container(
                        width: 11.w,
                        height: 3.3.h,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(36, 255, 255, 255),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "+ 20%",
                            style: TextStyle(
                              color: const Color(0xffFFFFFF),
                              fontSize: 15.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
