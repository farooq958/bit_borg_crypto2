

import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:bit_borg_crypto/view/dashboard/newspages/newsdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../alertCubit.dart';
import '../Bitborgicons.dart';

class sharedcomponent{
void  Alerty(BuildContext context, String TTexty, String Texty,String imagepath ,int check) {
  var alertdialog = AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    insetPadding: EdgeInsets.all(10.sp),
    backgroundColor: appcolors.onboardingcontainercolor,
    title: Row(
      children: [
        Expanded(child: Padding(
          padding:  EdgeInsets.only(left: 20.sp),
          child: Image.asset(imagepath,width: 77.w,height: 70.h,),
        )),

        BlocBuilder<alertCubit, bool>(
          builder: (context, state) {
            return Expanded(
              flex: 0,
              child: Padding(
                  padding: EdgeInsets.only(left: 18.sp,bottom: 22.sp),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context,false);
                        context.read<alertCubit>().boolcheck(state: false);
                      },
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          BitborgIcons.cross_circle,
                          color: appcolors.buttoncolor,
                          size: 25.r,
                        ),
                      ))),
            );
          },
        ),
      ],
    ),
    content: Container(
      width: 290.w,
      height: 220.h,
      decoration: BoxDecoration(
          color: appcolors.onboardingcontainercolor,
          borderRadius: BorderRadius.circular(4.sp)),
      child: ListView(
        children: [
          //    Image.asset('assets/images/bitcoingroup.png',width: 77.w,height: 70.h,),
          // SizedBox(height: 0.02.sh,),
          Center(child: Text(TTexty,style: GoogleFonts.montserrat(fontSize: 18.0, color: Colors.white , fontWeight: FontWeight.w600, ),)),

          SizedBox(height: 0.01.sh,),
          Center(child: Text(Texty,style: GoogleFonts.montserrat(fontSize: 12.0, color: appcolors.lighttextcolor, letterSpacing: 0.12, fontWeight: FontWeight.w300, height: 1.5, ),)),
          SizedBox(height: 0.04.sh,),
          check==0?
          Column(
            children: [
              Center(
                child: Container(
                  alignment: Alignment(-0.2,0.03),
                  width: 235.0,
                  height: 44.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), color: appcolors.lighttextcolor, border: Border.all(width: 1.0, color: appcolors.lighttextcolor,), ),
                  child:Text('Separate coin with "," (BTC,ETH)',style: GoogleFonts.montserrat(fontSize: 12.0, color:Colors.white, letterSpacing: 0.12, fontWeight: FontWeight.w300, height: 1.5, ),),
                ),
              ),

              SizedBox(height: 0.03.sh,),

              Center(
                child: Container(
                  alignment:const Alignment(-0.01,0.04),
                  width: 235.0.w,
                  height: 44.0.h,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), color: appcolors.buttoncolor, ),
                  child:Text('Add Coin',style: GoogleFonts.montserrat(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w500, height: 1.88, )),
                ),
              )
            ],
          )

              :
          Container(
            height: 128,
            width: 131,
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding:  EdgeInsets.only(right: 30.0.sp),
                  child: Image.asset('assets/images/Group 1108.png',width: 92,height: 32,),
                ),
                SizedBox(height: 0.01.sh,),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Image.asset('assets/images/Group 1110.png',width: 92,height: 32,),
                ),
                SizedBox(height: 0.01.sh,),
                Image.asset('assets/images/Group 1109.png',width: 92,height: 32,),
              ],
            ),
          ),


        ],
      ),
    ),

  );





  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return alertdialog;
      });
}
Widget resuablecontainernews(BuildContext context ,Color texttcolor, String Textt) {
  return InkWell(
    onTap: ()
    {
      Navigator.push(context , MaterialPageRoute(builder: (context) => newsdetails(Textcolor: texttcolor,Textr: Textt,)));

    },
    child: Container(
      width: 354.w,
      height: 160.h,
      decoration: BoxDecoration(
          color: appcolors.onboardingcontainercolor,
          borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: EdgeInsets.all(10.0.sp),
        child: Row(
          children: <Widget>[
            Expanded(
                flex: 0,
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'assets/images/Mask Group 1.png',
                      width: 68.w,
                      height: 67.h,
                    ))),
            Padding(
              padding: EdgeInsets.only(left: 8.0.sp),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        flex: 0,
                        child: Container(
                          alignment: Alignment.center,
                          width: 65.0.w,
                          height: 23.0.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4.0),
                            color: const Color(0xFF232736),
                          ),
                          child: Text(
                            Textt,
                            style: GoogleFonts.montserrat(
                              fontSize: 12.0,
                              color: texttcolor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 90.w,
                      ),
                      Expanded(
                          flex: 0,
                          child: Align(
                              alignment: Alignment.topRight,
                              child: Text(
                                "20 July,2021",
                                style: GoogleFonts.montserrat(
                                    fontSize: 12,
                                    color: appcolors.lighttextcolor),
                              )))
                    ],
                  ),
                  SizedBox(height: 15.h),
                  Expanded(
                      flex: 0,
                      child: Text(
                        "Bitcoin's ‘Upgrade for the Ages'",
                        style: GoogleFonts.montserrat(
                            color: Colors.white, fontWeight: FontWeight.w700),
                      )),
                  Expanded(
                      flex: 0,
                      child: Padding(
                        padding: EdgeInsets.only(right: 110.0.sp),
                        child: Text(
                          'Taproot is Here ',
                          style: GoogleFonts.montserrat(
                              color: Colors.white, fontWeight: FontWeight.w700),
                        ),
                      )),
                  SizedBox(
                    height: 10.h,
                  ),
                  Expanded(
                      flex: 0,
                      child: Text(
                        'The best Bitcoin casinos offer almost ',
                        style: GoogleFonts.montserrat(
                            color: appcolors.lighttextcolor, fontSize: 12),
                      )),
                  Expanded(
                      flex: 0,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'instant withdrawals, zero transaction  ',
                          style: GoogleFonts.montserrat(
                              color: appcolors.lighttextcolor, fontSize: 12),
                        ),
                      )),
                  Expanded(
                      flex: 0,
                      child: Padding(
                        padding: EdgeInsets.only(right: 12.0.sp),
                        child: Text(
                          'fees, anonymous transfers, as well ',
                          style: GoogleFonts.montserrat(
                              color: appcolors.lighttextcolor, fontSize: 12),
                        ),
                      ))
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

