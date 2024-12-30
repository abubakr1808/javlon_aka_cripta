import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BitcoinHeader extends StatelessWidget {
  const BitcoinHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 30.h,
      decoration: BoxDecoration(
        color: const Color.fromARGB(154, 255, 255, 255),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(25),
          bottomRight: Radius.circular(25),
        ),
        border: Border.all(
          color: const Color.fromARGB(87, 255, 255, 255),
          width: 0.5.w,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.sp, horizontal: 12.sp),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: const Color(0xffFFFFFF),
                    size: 22.sp,
                  ),
                ),
                SizedBox(width: 32.w),
                Text(
                  "Bitcoin",
                  style: TextStyle(
                    color: const Color(0xffFFFFFF),
                    fontSize: 20.sp,
                  ),
                ),
              ],
            ),
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  color: Color.fromARGB(83, 0, 0, 0),
                ),
                children: [
                  TextSpan(
                    text: "\$30,138",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 22.sp,
                    ),
                  ),
                  TextSpan(
                    text: "USD",
                    style: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.h),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "4,712.92",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 19.5.sp,
                    ),
                  ),
                  Container(
                    width: 15.w,
                    height: 3.4.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Center(
                      child: Text(
                        "+2.20%",
                        style: TextStyle(
                          color: const Color(0xff34C759),
                          fontSize: 15.5.sp,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
