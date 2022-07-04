import 'package:bit_borg_crypto/controllers/utils/Bitborgicons.dart';
import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:bit_borg_crypto/controllers/utils/pagecontroller.dart';
import 'package:bit_borg_crypto/controllers/walk_through_cubit.dart';
import 'package:bit_borg_crypto/controllers/walk_through_cubit.dart';
import 'package:bit_borg_crypto/model/walkthroughmodel.dart';
import 'package:bit_borg_crypto/view/sign_in_up/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class walkthroughpages extends StatefulWidget {
  const walkthroughpages({Key? key}) : super(key: key);

  @override
  State<walkthroughpages> createState() => _walkthroughpagesState();
}

class _walkthroughpagesState extends State<walkthroughpages>
    with TickerProviderStateMixin {
  var walkthroughlist = getListWalkThrough();
  int state = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocBuilder<WalkThroughCubit, int>(
  builder: (context, state) {
    return Container(
          width: 1.sw,
          height: 1.sh,
          color: appcolors.primarycolor,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: PageView.builder(
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        state != 2
                            ? Expanded(
                                flex: 0,
                                  child: Padding(
                                    padding:  EdgeInsets.only(right: 20.0.sp,top: 20.sp),
                                    child: Align(
                                      alignment: Alignment.topRight,
                                      child: GestureDetector(
                                        onTap: () {
                                          if (state < 2) {
                                            pagecontroller.pgecontrler
                                                .jumpToPage(2);
                                          }
                                          },
                                        child: Text(
                                          'Skip',
                                          style: GoogleFonts.montserrat(
                                              color: appcolors.buttoncolor,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )),
                                  ))
                            :  Expanded(
                                flex: 0,
                                child: Align(
                                    alignment: Alignment.topRight,
                                    child: Text(
                                      ' ',
                                      style: GoogleFonts.montserrat(
                                          color: appcolors.buttoncolor,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600),
                                    ))),
                        Expanded(
                            flex: 1,
                            child: Image.asset(
                              walkthroughlist[index].image.toString(),
                              width: 283.76.sp,
                              height: state == 3 ? 234 : 227.05.sp,
                            )),
                      ],
                    );
                  },
                  onPageChanged: (value) {
                    context.read<WalkThroughCubit>().getincrementindex(state: value);

                  },
                  itemCount: walkthroughlist.length,
                  controller: pagecontroller.pgecontrler,
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(
                      width: 20 * walkthroughlist.length.toDouble(),
                      height: 8.sp,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: walkthroughlist.length,
                          itemBuilder: (context, index) {
                            return Container(
                              width: index == state ? 20.sp : 10,
                              height: 5.sp,
                              margin: const EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: index == state
                                      ? appcolors.buttoncolor
                                      : Colors.grey),
                            );
                          })),
                ),
              ),
              Expanded(
                flex: 0,
                child: SizedBox(
                  height: 2.sp,
                ),
              ),
              Expanded(
                  flex: 4,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: appcolors.onboardingcontainercolor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24))),
                    child: Column(
                      children: [
                        Expanded(
                          child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 20.sp),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    walkthroughlist[state]
                                        .title
                                        .toString(),
                                    style: GoogleFonts.montserrat(
                                        color: Colors.white, fontSize: 24.sp),
                                  ))),
                        ),
                        state == 0
                            ? Expanded(
                                child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(vertical: 10.0.sp),
                                  child: Column(
                                    children: [
                                      Expanded(
                                          flex: 0,
                                          child: Text(
                                            "Get all the latest Signals, News, Hidden",
                                            style:  GoogleFonts.montserrat(
                                                color: appcolors.lighttextcolor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300),
                                          )),
                                      SizedBox(
                                        height: 10.sp,
                                      ),
                                      Expanded(
                                          flex: 0,
                                          child: Text(
                                            "Gems and Airdrops from our Expert Trade",
                                            style:  GoogleFonts.montserrat(
                                                color: appcolors.lighttextcolor,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w300),
                                          )),
                                      SizedBox(
                                        height: 10.sp,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            : state == 1
                                ? Expanded(
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10.0.sp),
                                      child: Column(
                                        children: [
                                           Expanded(
                                              flex: 0,
                                              child: Text(
                                                "We keep an eye on the news so you",
                                                style:  GoogleFonts.montserrat(
                                                    color: appcolors
                                                        .lighttextcolor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )),
                                          SizedBox(
                                            height: 10.sp,
                                          ),
                                           Expanded(
                                              flex: 0,
                                              child: Text(
                                                "don't have to. We share all the important",
                                                style:  GoogleFonts.montserrat(
                                                    color: appcolors
                                                        .lighttextcolor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )),
                                          SizedBox(
                                            height: 10.sp,
                                          ),
                                           Expanded(
                                              flex: 0,
                                              child: Text(
                                                "News with our Subscribers on a daily basis.",
                                                style:  GoogleFonts.montserrat(
                                                    color: appcolors
                                                        .lighttextcolor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )),
                                        ],
                                      ),
                                    ),
                                  )
                                : Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10.0),
                                      child: Column(
                                        children: [
                                           Expanded(
                                              flex: 0,
                                              child: Text(
                                                "Our team gives the best trading signals",
                                                style:  GoogleFonts.montserrat(
                                                    color: appcolors
                                                        .lighttextcolor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )),
                                          SizedBox(
                                            height: 10.sp,
                                          ),
                                           Expanded(
                                              flex: 0,
                                              child: Text(
                                                "for Futures and Spot Trading with a record",
                                                style:  GoogleFonts.montserrat(
                                                    color: appcolors
                                                        .lighttextcolor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )),
                                          SizedBox(
                                            height: 10.sp,
                                          ),
                                           Expanded(
                                              flex: 0,
                                              child: Text(
                                                "96% Accuracy",
                                                style:  GoogleFonts.montserrat(
                                                    color: appcolors
                                                        .lighttextcolor,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w300),
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            state > 0
                                ? Expanded(
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 20.sp, bottom: 50.sp),
                                        child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: GestureDetector(
                                                onTap: () {
                                                  pagecontroller.pgecontrler
                                                      .jumpToPage(
                                                          state - 1);
                                                },
                                                child: Text(
                                                  'Back',
                                                  style: GoogleFonts.montserrat(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: appcolors
                                                          .buttoncolor),
                                                )))))
                                : Expanded(
                                    child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Text(
                                          ' ',
                                          style: GoogleFonts.montserrat(
                                              color: appcolors.buttoncolor),
                                        ))),
                            Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.only(
                                    right: 40.sp, bottom: 60.sp),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: GestureDetector(
                                    onTap: () {
                                      if (state == 0) {
                                        pagecontroller.pgecontrler
                                            .jumpToPage(1);
                                      } else if(state==1) {
                                        pagecontroller.pgecontrler
                                           .jumpToPage(2);
                                      } else {
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => const Login() ));
                                  }

                                    },
                                    child: CircularPercentIndicator(
                                      radius: 40.sp,
                                      lineWidth: 3.sp,
                                      percent: state == 0
                                          ? 0.33
                                          : state == 1
                                              ? 0.33 * 2
                                              : 1,
                                      progressColor: appcolors.buttoncolor,
                                      backgroundColor:
                                          appcolors.onboardingcontainercolor,
                                      center: Container(
                                        width: 60.sp,
                                        height: 60.sp,
                                        decoration: BoxDecoration(
                                            color: appcolors.buttoncolor,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Icon(
                                          BitborgIcons.arowright,
                                          size: 15.sp,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        );
  },
),
      ),
    );
  }
}
