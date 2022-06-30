import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:bit_borg_crypto/controllers/utils/shared_components/sharedcomponent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class signalsdetailpage extends StatefulWidget {
  final int check ;
  const signalsdetailpage({Key? key ,required this.check}) : super(key: key);

  @override
  State<signalsdetailpage> createState() => _signalsdetailpageState(this.check);
}

class _signalsdetailpageState extends State<signalsdetailpage> {
  var shc = sharedcomponent();
final int  check;
  _signalsdetailpageState(this.check);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: appcolors.primarycolor,
      appBar: AppBar(
        title:shc.reusableappbar(context, 'BTC USDT') ,
        backgroundColor: appcolors.onboardingcontainercolor,
        automaticallyImplyLeading: false,
      ),
body: Container(
  height: 1.sh,
  width: 1.sw,
  child:   Padding(
    padding:  EdgeInsets.only(left: 30.0.sp,right: 30.sp),
    child: ListView(

      children: [
        SizedBox(height: 0.03.sh,),
        Row(
                children: <Widget>[
       Expanded(child: Text('Signal # 1001',style: GoogleFonts.montserrat(fontSize: 14.0, color:Colors.white, fontWeight: FontWeight.w600, ),))
 ,
  Expanded(
    child: Text(
    '10:20 Pm 23/06/2021',
    style: GoogleFonts.montserrat(
      fontSize: 10.0,
      color: const Color(0xFF999999),
      fontWeight: FontWeight.w600,
    ),
    textAlign: TextAlign.right,
),
  ),

                ],
              ),
SizedBox(height: 0.03.sh,),
        shc.reusablecontainersignal(1, context, appcolors.targetsignalcolor, 'low risk', 'Hold')

       , SizedBox(height: 0.03.sh,),
shc.reusabletargetconatiner(),
        SizedBox(height: 0.03.sh,),
        shc.reusabletargetconatiner(),
        SizedBox(height: 0.2.sh,),
        Container(
          alignment: Alignment(0.0,0.04),
          width: 327.0,
          height: 44.0,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), color:check==0? appcolors.successcolor:appcolors.redsignalcolor, ),
          child:Text( check==0?'Buy':"Sell",style: GoogleFonts.montserrat(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w500, height: 1.88, ),),
        )
            ],

    ),
  ),
),
    );
  }
}
