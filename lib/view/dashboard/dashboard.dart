import 'package:bit_borg_crypto/controllers/dashboardcontainerCubit.dart';
import 'package:bit_borg_crypto/controllers/dashboardpage_cubit.dart';
import 'package:bit_borg_crypto/controllers/utils/Bitborgicons.dart';
import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:bit_borg_crypto/controllers/utils/pagecontroller.dart';
import 'package:bit_borg_crypto/view/dashboard/gems.dart';
import 'package:bit_borg_crypto/view/dashboard/home_page.dart';
import 'package:bit_borg_crypto/view/dashboard/news_page.dart';
import 'package:bit_borg_crypto/view/dashboard/signals.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/utils/shared_components/sharedcomponent.dart';

class dashboard extends StatefulWidget {
  const dashboard({Key? key}) : super(key: key);

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  PageController pagec =  PageController(initialPage: 0);
  var sc= sharedcomponent();
  Widget reusablebottomnavigationitems(IconData icons, String nameofpage) {
    return BlocBuilder<dashboardpageCubit, int>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            nameofpage == "Gems"
                ? Expanded(
                  child: Image.asset(
              'assets/images/gembtmn.png',
              width: 35.sp,
              height: 35.sp,
            ),
                )
            // SizedBox()

                : Expanded(
                  child: IconButton(
              icon: Icon(icons), color: nameofpage=='Home'&&state==0? appcolors.buttoncolor:
        nameofpage=='News'&&state==1? appcolors.buttoncolor
            :nameofpage=='Signals'&&state==2? appcolors.buttoncolor :
        nameofpage=='Gems'&&state==3? appcolors.buttoncolor
            :
        appcolors.unselectedbottomnaviagtioncolor,
              //  tooltip: 'Home',
              onPressed: () {},
            ),
                ),
            nameofpage == "Gems"
                ? SizedBox(
              height: 3.h,
            )
                : const SizedBox(),
             Expanded(
               child: Text(
                nameofpage,
                style: GoogleFonts.montserrat(
                    color:nameofpage=='Home'&&state==0? appcolors.buttoncolor:
                    nameofpage=='News'&&state==1? appcolors.buttoncolor
                       :nameofpage=='Signals'&&state==2? appcolors.buttoncolor :
                    nameofpage=='Gems'&&state==3? appcolors.buttoncolor
                    :
                    appcolors.unselectedbottomnaviagtioncolor, fontSize: 14),
            ),
             )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: appcolors.onboardingcontainercolor,
        title: Container(
          height: 40.h,
          width: 375.h,

          color: appcolors.onboardingcontainercolor,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    flex: 0,
                    child: Align(
                        alignment: Alignment.center,
                        child: Image.asset(
                          'assets/images/hamburgericon.png',
                          width: 18.5.sp,
                          height: 13.5.sp,
                        ))),
                BlocBuilder<dashboardpageCubit, int>(
                  builder: (context, state) {
                    return Expanded(
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                             state==0 ?'Home':state==1?'News' : state== 2? "Signals":'Gems',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold),
                            )));
                  },
                ),
                Expanded(
                    child: Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          'assets/images/alaramwithorange.png',
                          height: 26.sp,
                        ))),
                // const   Expanded(flex:0,child: Align( alignment: Alignment.topRight,child: Icon(BitborgIcons.brightness_1,color: Colors.deepOrange,)))
              ],
            ),
          ),
        ),),
      body: Container(
        width: 1.sw,
        height: 1.sh,
        color: appcolors.primarycolor,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 25.sp, right: 25.sp, top: 30.sp),
              child: ListView(
                children: [
                  Container(
                    height: 700.h,
                    child: BlocBuilder<dashboardpageCubit, int>(
                      builder: (context, state) {
                        return PageView(
                          onPageChanged: (value) {
                            context
                                .read<dashboardpageCubit>()
                                .getincrementindex(state: value);
                          },
                          controller: pagecontroller.pagec,
                          children: const [
                            homescreen(),
                            newsscreen(),
                            signalscreen(),
                            gemsscreen()

                          ],

                        );
                      },
                    ),
                  )

                ],
              ),
            ),
            BlocBuilder<dashboardcontainerCubit, bool>(
              builder: (context, state) {
                return Positioned(
                  bottom: 30,
                  child: GestureDetector(
                    onTap: () {
                      if (state == false) {
                        context.read<dashboardcontainerCubit>().boolcheck(
                            state: true);
                      }
                      else {


                      }
                    },
                    child: Container(
                      width: state == false ? 49.w : 175.w,
                      height: 44.h,
                      decoration: BoxDecoration(
                          color: appcolors.primarycolor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(4.sp),
                              bottomRight: Radius.circular(24.sp))

                      ),
                      child:
                      Stack(
                        children: [

                          Container(
                            width: state == false ? 49.w : 153.w,
                            height: 44.h,
                            decoration: BoxDecoration(
                                color: appcolors.buttoncolor,
                                borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(4.sp),
                                    bottomRight: Radius.circular(4.sp))

                            ),
                            child:
                            state == false ?

                            Icon(
                              BitborgIcons.diamond, color: Colors.white,
                              size: 20.sp,)
                                :
                            Row(
                              children: [
                                Expanded(
                                  flex: 0,
                                  child: Icon(
                                    BitborgIcons.diamond, color: Colors.white,
                                    size: 20.sp,),
                                ),
                                Expanded(
                                    flex: 0,
                                    child: InkWell(
                                      onTap: ()
                                      {
                                        sc.Alerty(context, "Coming soon", "The premium subscription will be launch soon \n To get notified Please enter your email below.","assets/images/time-quarterpast.png",0,1);

                                      },
                                      child: Text(' Buy a Premium',
                                        style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),),
                                    ))
                                ,

                              ],
                            ),
                          ),
                          Positioned(
                            left: 150.sp,
                            top: 10.sp,
                            child: GestureDetector(
                              onTap: () {
                                context.read<dashboardcontainerCubit>()
                                    .boolcheck(state: false);
                              },
                              child: Container(

                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: appcolors.buttoncolor),
                                    borderRadius: BorderRadius.circular(50)
                                ),
                                child: CircleAvatar(
                                  radius: 14.r,
                                  foregroundColor: appcolors.buttoncolor,
                                  backgroundColor: Colors.black,
                                  child: Text('x',
                                    style: GoogleFonts.montserrat(
                                        color: appcolors.buttoncolor),),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 80.h,
        width: 375.h,
        color: appcolors.onboardingcontainercolor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
             Expanded(child: GestureDetector(onTap: ()
                 {
                  // pagecontroller.pgecontrler.jumpToPage(0);
                   pagecontroller.pagec.jumpToPage(0);
                 },child: reusablebottomnavigationitems(BitborgIcons.homebtmn, 'Home'))),
            Expanded(child: GestureDetector(onTap: ()
            {
             // pagecontroller.pgecontrler.jumpToPage(1);
            pagecontroller.pagec.jumpToPage(1);
            },child: reusablebottomnavigationitems(BitborgIcons.form, 'News'))),
             Expanded(child: GestureDetector(onTap: ()
             {
               pagecontroller.pagec.jumpToPage(2);
             },child: reusablebottomnavigationitems(BitborgIcons.signals, 'Signals'))),
             Expanded(child: GestureDetector(onTap: ()
             {
               pagecontroller.pagec.jumpToPage(3);
             },child: reusablebottomnavigationitems(BitborgIcons.diamond, 'Gems'))),
          ],
        ),
      ),
    );
  }
}
