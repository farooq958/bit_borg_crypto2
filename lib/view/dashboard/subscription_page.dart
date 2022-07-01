import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:bit_borg_crypto/controllers/utils/shared_components/sharedcomponent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class subscriptionpage extends StatefulWidget {
  const subscriptionpage({Key? key}) : super(key: key);

  @override
  State<subscriptionpage> createState() => _subscriptionpageState();
}

class _subscriptionpageState extends State<subscriptionpage> {
  sharedcomponent sdc= sharedcomponent();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appcolors.primarycolor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: appcolors.onboardingcontainercolor ,
title: sdc.reusableappbar(context, "Subscription"),
      ),

      body: Container(
        width: 1.sw,
        height: 1.sh,
        child:  Padding(
          padding:  EdgeInsets.only(left: 20.0.sp,right: 20.sp),
          child: ListView(
            children: [
              SizedBox(height: 0.02.sh,),
              Image.asset('assets/images/Group 1177.png',height: 126.h, width: 126.w,),
              SizedBox(height: 0.02.sh,),
          Center(
            child: Text(
              'Unlock Premium Features',
              style: GoogleFonts.montserrat(
                fontSize: 18.0.sp,
                color: const Color(0xFFFE9E00),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Text('You can buy any premium subscription and \nenjoy Unlimited features of the app.',style: GoogleFonts.montserrat(fontSize: 14.0, color: appcolors.lighttextcolor, fontWeight: FontWeight.w300, height: 1.71, ),textAlign: TextAlign.center, )
              ,SizedBox(height: 0.02.sh,),
sdc.reusablesubscriptioncontainer('Yearly Plan'),
              SizedBox(height: 0.02.sh,),
              sdc.reusablesubscriptioncontainer('6 Months Plan'),
              SizedBox(height: 0.02.sh,),
              sdc.reusablesubscriptioncontainer('3 Months Plan'),
            ],

          ),
        ),
        
      ),
      
    );
  }
}
