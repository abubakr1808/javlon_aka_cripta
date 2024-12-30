import 'package:flutter/material.dart';
import 'package:javlon_aka_cripta/src/presentation/bitcoin_app/ui/ui.dart';
import 'package:javlon_aka_cripta/src/presentation/bitcoin_app/view/bitcoin.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HorizontalCardList extends StatelessWidget {
  const HorizontalCardList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      height: 47.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: imagecon.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Bitcoin(),
                ),
              );
            },
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              width: 55.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.sp),
                color: const Color.fromARGB(234, 255, 255, 255),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.sp,
                  vertical: 19.sp,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          imagecon[index],
                        ),
                        SizedBox(width: 2.w),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "${textcona[index]}\n",
                                style: TextStyle(
                                  color: const Color(0xff000000),
                                  fontWeight: FontWeight.w700,
                                  fontSize: 18.sp,
                                ),
                              ),
                              TextSpan(
                                text: texconteiner[index],
                                style: TextStyle(
                                  color: const Color.fromARGB(113, 60, 60, 67),
                                  fontSize: 17.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Image.asset(
                        "assets/images/Bitcoin Chart.png",
                        fit: BoxFit.contain,
                        width: 9999.w,
                        height: 25.h,
                      ),
                    ),
                    Row(
                      children: [
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: Color(0xff000000),
                            ),
                            children: [
                              TextSpan(
                                text: "${texttext[index]}\n",
                                style: TextStyle(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 19.sp,
                                ),
                              ),
                              TextSpan(
                                text: textint[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15.sp,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          width: 15.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(156, 255, 255, 255),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: Text(
                              intcon[index],
                              style: TextStyle(
                                color: const Color(0xff34C759),
                                fontSize: 17.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
