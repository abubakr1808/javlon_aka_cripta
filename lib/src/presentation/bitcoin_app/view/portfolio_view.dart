import 'package:flutter/material.dart';
import 'package:javlon_aka_cripta/src/presentation/bitcoin_app/ui/ui.dart';
import 'package:javlon_aka_cripta/src/presentation/bitcoin_app/widget/balance_card.dart';
import 'package:javlon_aka_cripta/src/presentation/bitcoin_app/widget/horizontal_card_list.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(59, 69, 42, 124),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 42, 124, 38),
        title: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10.sp,
          ),
          child: Text(
            "Portfolio",
            style: TextStyle(
              color: const Color.fromARGB(89, 0, 0, 0),
              fontSize: 21.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const BalanceCard(),
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.only(left: 15.5.sp),
              child: SizedBox(
                width: double.infinity,
                height: 9.h,
                child: Expanded(
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: conicon.length,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: const EdgeInsets.all(10),
                        width: 41.w,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(184, 255, 255, 255),
                          boxShadow: const [
                            BoxShadow(
                              color: Color(0xff452a7c),
                              offset: Offset(4, 4),
                              blurRadius: 1,
                            ),
                            BoxShadow(
                              color: Color.fromARGB(45, 255, 255, 255),
                              offset: Offset(-1, -1),
                              blurRadius: 2,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(21),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              conicon[index],
                              size: 18.sp,
                            ),
                            SizedBox(width: 1.1.w),
                            Text(
                              conttext[index],
                              style: TextStyle(
                                fontSize: 18.sp,
                                color: const Color(0xff000000),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            const HorizontalCardList(),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        width: 100.w,
        height: 8.h,
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
          height: 9.h,
          child: Image.asset(
            "assets/images/Frame 3604.png",
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
