import 'package:flutter/material.dart';
import 'package:javlon_aka_cripta/src/presentation/bitcoin_app/ui/ui.dart';
import 'package:javlon_aka_cripta/src/presentation/bitcoin_app/widget/bitcoin_header.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:javlon_aka_cripta/src/presentation/app/app.dart';

class Bitcoin extends StatelessWidget {
  const Bitcoin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(59, 69, 42, 124),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BitcoinHeader(),
            SizedBox(height: 4.w),
            Image.asset(
              "assets/images/bitcoin.png",
              fit: BoxFit.cover,
              width: 100.w,
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.sp),
              child: Row(
                children: [
                  Container(
                    width: 9.5.w,
                    height: 5.3.h,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(246, 0, 251, 88),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        "1H",
                        style: TextStyle(
                          color: const Color(0xffFFFFFF),
                          fontSize: 17.sp,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 85.w,
                    height: 13.5.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: textlist.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Text(
                            textlist[index],
                            style: TextStyle(
                              color: const Color.fromARGB(156, 0, 0, 0),
                              fontSize: 18.sp,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "    Transactions",
                style: TextStyle(
                  color: const Color(0xffFFFFFF),
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(     // responsizer qilish kerak
              width: 90.w,
              height: 20.h,
              child: ListView.builder(
                itemCount: textl.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 1.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/Symbol.png",
                          fit: BoxFit.contain,
                          width: 10.w,
                          height: 6.h,
                        ),
                        SizedBox(width: 2.w),
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                color: Color(0xffFFFFFF),
                              ),
                              children: [
                                TextSpan(
                                  text: "Bought bitcoin\n ",
                                  style: TextStyle(
                                    fontSize: 19.sp,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: "Nov 18, 2021",
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 17.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        // SizedBox(width: 9.w),
                        Text(
                          textl[index],
                          style: TextStyle(
                            color: const Color(0xffFFFFFF),
                            fontWeight: FontWeight.w600,
                            fontSize: 21.sp,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: 100.w,
        height: 10.h,
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: SizedBox(
          width: 90.w,
          height: 8.h,
          child: Image.asset(
            "assets/images/Frame 3604 (1).png",
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
