import 'package:bit_borg_crypto/controllers/utils/Bitborgicons.dart';
import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:bit_borg_crypto/controllers/utils/shared_components/sharedcomponent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class resetpasswordscreen extends StatefulWidget {
  const resetpasswordscreen({Key? key}) : super(key: key);

  @override
  State<resetpasswordscreen> createState() => _resetpasswordscreenState();
}

class _resetpasswordscreenState extends State<resetpasswordscreen> {
  sharedcomponent scc=sharedcomponent();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: appcolors.primarycolor,
      appBar: AppBar(
        title: Padding(padding: EdgeInsets.only(left: 20.sp), child:  InkWell(onTap:(){

          Navigator.pop(context);
        },child: Icon(BitborgIcons.arrow_right,size: 20.r,))),
        backgroundColor: appcolors.primarycolor,
automaticallyImplyLeading: false,
      ),
body: Container(
  height: 1.sh,
  width: 1.sw,
  child: Padding(
    padding: EdgeInsets.only(left: 20.sp,right: 20.sp),
    child: ListView(
      children: [
        SizedBox(height: 0.02.sh,),
      Center(child: Text('Reset Password',style: GoogleFonts.montserrat(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.w600, ),))

    ,
        SizedBox(height: 0.01.sh,),
        Text('Below field are required to fill for the \npassword reset',style: GoogleFonts.montserrat(fontSize: 14.0.sp, color: appcolors.lighttextcolor, fontWeight: FontWeight.w300, height: 1.71, ),textAlign: TextAlign.center, )
,
        SizedBox(height: 0.02.sh,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                ' New Password',
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )),
        ),
        SizedBox(
          height: 0.01.sh,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0.sp),
          child: Container(
            height: 44.sp,
            decoration: BoxDecoration(
              color: appcolors.textfieldcolor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock_outlined,
                    color: Colors.white,
                  ),
                  contentPadding: EdgeInsets.only(bottom: 0,top:0.sp),
                  hintText: "******",
                  suffixIcon: Icon(Icons.remove_red_eye,
                      size: 30.sp,
                      color: appcolors.textfieldtextcolor),
                  hintStyle: GoogleFonts.montserrat(
                      color: appcolors.textfieldtextcolor),
                  fillColor: Colors.lightBlue,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),

                    // borderSide: BorderSide(color:appcolors.lighttextcolor ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                          color: appcolors.lighttextcolor))),
            ),
          ),
        ),
        SizedBox(height: 0.02.sh,),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.sp),
          child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                ' Confirm Password',
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold),
              )),
        ),
        SizedBox(
          height: 0.01.sh,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0.sp),
          child: Container(
            height: 44.sp,
            decoration: BoxDecoration(
              color: appcolors.textfieldcolor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  prefixIcon: const Icon(
                    Icons.lock_outlined,
                    color: Colors.white,
                  ),
                  contentPadding: EdgeInsets.only(bottom: 0,top:0.sp),
                  hintText: "******",
                  suffixIcon: Icon(Icons.remove_red_eye,
                      size: 30.sp,
                      color: appcolors.textfieldtextcolor),
                  hintStyle: GoogleFonts.montserrat(
                      color: appcolors.textfieldtextcolor),
                  fillColor: Colors.lightBlue,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),

                    // borderSide: BorderSide(color:appcolors.lighttextcolor ),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: const BorderSide(
                          color: appcolors.lighttextcolor))),
            ),
          ),
        ),
        SizedBox(
          height: 0.04.sh,
        ),
        Container(


          height: 44.0.h,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), color:  appcolors.buttoncolor  ),
          child:  Center(child: Text('Reset Password',style: GoogleFonts.montserrat(color: Colors.white),)),
        )
      ],


    ),
  ),

),
    );
  }
}
