import 'package:bit_borg_crypto/controllers/utils/Bitborgicons.dart';
import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:bit_borg_crypto/controllers/utils/shared_components/sharedcomponent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class newsdetails extends StatefulWidget {
  final Color Textcolor;
  final String Textr;
  const newsdetails({Key? key, required this.Textcolor, required this.Textr}) : super(key: key);

  @override
   State<newsdetails> createState() => newsdetailState(this.Textcolor,this.Textr );
}

class newsdetailState extends State<newsdetails> {
  final Color Textcolor;
  var shh= sharedcomponent();
  final String Textr;
  newsdetailState( this.Textcolor, this.Textr);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

backgroundColor: (appcolors.primarycolor),
appBar: AppBar(
  title: shh.reusableappbar(context, 'News'),
  backgroundColor: appcolors.onboardingcontainercolor,
automaticallyImplyLeading: false,

),
      body: Container(
        width: 1.sw,
        height: 1.sh,
        child: ListView(

          children: [

            SizedBox(
              width: 375.w,
              height: 214.h,
child: Stack(

  children: [

    Image.asset('assets/images/newsdetailimage.png'),
    Positioned(left: 2.sp,right: 5.sp, child: Image.asset('assets/images/Gradientimage.png',fit: BoxFit.cover,)),

                Positioned(
                  bottom: 20,
                  child: Padding(
                    padding:  EdgeInsets.only(left: 10.0.sp,right: 15.sp),
                    child: Container(
                      height: 62.h,
                      width: 350.w,
                      padding:  EdgeInsets.only(left: 15.0.sp,right: 15.sp),
                      child: ListView(
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
                          color: Colors.white,
                        ),
                        child: Text(
                          Textr
                          ,
                          style: GoogleFonts.montserrat(
                            fontSize: 12.0,
                            color: Textcolor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                  ),
SizedBox(width: 0.04.sw,),
                  Expanded(
                        flex: 0,
                        child: Align(
                            alignment: Alignment.topRight,
                            child: Text(
                              "20 July,2021",
                              style: GoogleFonts.montserrat(
                                  fontSize: 12,
                                  color: Colors.white),
                            ))),
                SizedBox(width: 0.24.sw,),
                Expanded(flex: 0, child: Icon(BitborgIcons.share,color: appcolors.buttoncolor,))
                    ,  SizedBox(width: 0.04.sw,),
                Expanded(flex: 0, child: Text('Share',style: GoogleFonts.montserrat(fontWeight: FontWeight.w500,color: appcolors.buttoncolor,)))

              ],
            ),
            Text("Bitcoin's ‘Upgrade for the Ages' Taproot is not",style: GoogleFonts.montserrat(color: Colors.white ,fontWeight: FontWeight.normal),),
            Text('Here',style: GoogleFonts.montserrat(color: Colors.white))


                        ],
            ),
                    ),
                  ),
                ),


  ],
),
                
            ),
            SizedBox(height: 0.01.sh,),
          Padding(
            padding:  EdgeInsets.only(left: 25.0.sp,right: 25.sp),
            child: SizedBox(
              width: 300.0,
              height: 506.0,
              child: Text('The best Bitcoin casinos offer almost instant withdrawals, zero transaction fees, anonymous transfers, as well. The best Bitcoin casinos offer almost instant withdrawals, zero transaction fees, anonymous transfers, as well.\n\nThe best Bitcoin casinos offer almost instant withdrawals, zero transaction fees, anonymous transfers, as well.The best Bitcoin casinos offer almost instant withdrawals, zero transaction fees, anonymous transfers, as well\n\nThe best Bitcoin casinos offer almost instant withdrawals, zero transaction fees, anonymous transfers, as well. The best Bitcoin casinos offer almost instant withdrawals, zero transaction fees, anonymous transfers, as well.\n\nThe best Bitcoin casinos offer almost instant withdrawals, zero transaction fees, anonymous transfers, as well. The best Bitcoin casinos offer almost instant withdrawals, zero transaction fees, anonymous transfers, as well\n\nThe best Bitcoin casinos offer almost instant withdrawals, zero transaction fees, anonymous transfers, as well. The best Bitcoin casinos offer almost instant withdrawals, zero transaction fees, anonymous transfers, as well',style: GoogleFonts.montserrat(fontSize: 12.0, color: appcolors.lighttextcolor, letterSpacing: 0.12, fontWeight: FontWeight.w300, height: 1.5, ),),
            ),
          ),




          ],

        ),

      ),
    );
  }
}
