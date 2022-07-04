import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:bit_borg_crypto/controllers/utils/shared_components/sharedcomponent.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class notificationscreen extends StatefulWidget {
  const notificationscreen({Key? key}) : super(key: key);

  @override
  State<notificationscreen> createState() => _notificationscreenState();
}

class _notificationscreenState extends State<notificationscreen> {
  sharedcomponent sc = sharedcomponent();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appcolors.primarycolor,
        title: sc.reusableappbar(context, 'Notifications'),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: appcolors.primarycolor,
      body: SizedBox(
        height: 1.sh,
        width: 1.sw,
        child: Padding(
          padding: EdgeInsets.only(right: 20.0.sp, left: 30.sp),
          child: ListView(
            children: [
              SizedBox(
                height: 0.02.sh,
              ),
              Text(
                '10 Notifications Found',
                style: GoogleFonts.montserrat(
                  fontSize: 14.0,
                  color: appcolors.lighttextcolor,
                  height: 1.71,
                ),
              ),
              sc.reusablenotificationlist(),
              SizedBox(
                height: 0.01.sh,
              ),
              sc.reusablenotificationlist(),
              SizedBox(
                height: 0.01.sh,
              ),
              sc.reusablenotificationlist(),
              SizedBox(
                height: 0.01.sh,
              ),
              sc.reusablenotificationlist(),
              SizedBox(
                height: 0.01.sh,
              ),
              sc.reusablenotificationlist(),
              SizedBox(
                height: 0.01.sh,
              ),
              sc.reusablenotificationlist(),
              SizedBox(
                height: 0.01.sh,
              ),
              sc.reusablenotificationlist(),
              SizedBox(
                height: 0.01.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
