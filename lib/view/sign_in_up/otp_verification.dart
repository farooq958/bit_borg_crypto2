import 'package:bit_borg_crypto/controllers/successcontrollercubit.dart';
import 'package:bit_borg_crypto/controllers/utils/Bitborgicons.dart';
import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class  otpscreen extends StatefulWidget {
  const otpscreen({Key? key}) : super(key: key);

  @override
  State<otpscreen> createState() => _otpscreenState();
}

class _otpscreenState extends State<otpscreen> {
  TextEditingController controllerotp = TextEditingController();
  TextEditingController controllerotp1 = TextEditingController();
  TextEditingController controllerotp2 = TextEditingController();
  TextEditingController controllerotp3 = TextEditingController();
 bool state = false;
 String valucompare= "2548";

  late FocusNode myFocusNode;
  late FocusNode myFocusNode1;
  late FocusNode myFocusNode2;
  @override
  void initState() {
    super.initState();

    myFocusNode = FocusNode();
    myFocusNode1 = FocusNode();
    myFocusNode2 = FocusNode();
  }

  @override
  void dispose() {
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();
    myFocusNode1.dispose();
    myFocusNode2.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<successcontroller, bool>(
  builder: (context, state) {
    return Container(
      height: 1.sh,
      width: 1.sw,

      color: appcolors.primarycolor,

      child: Padding(
        padding:  EdgeInsets.only(top:20,left: 30.0.sp,right: 35.sp),
        child: ListView(
          children: [


            Align(alignment:Alignment.bottomLeft,child: GestureDetector(onTap: (){
              Navigator.pop(context);
            },
                child: const Icon(BitborgIcons.arrow_right,color: Colors.white,size: 20,))),
            SizedBox(height: 0.02.sh),
            Center(child: Text('Verification Code',style: GoogleFonts.montserrat(fontSize: 24.0, color: Colors.white, fontWeight: FontWeight.w600, ),))
        ,SizedBox(height: 0.02.sh),
            Text.rich(TextSpan(  style: GoogleFonts.montserrat(fontSize: 14.0, color: Colors.white , height: 1.6, ),  children: [TextSpan( text: 'Enter the ',style: GoogleFonts.montserrat(fontWeight: FontWeight.w300, ),), TextSpan( text: '4 digit',style: GoogleFonts.montserrat(color:Colors.white, fontWeight: FontWeight.w500, ),), TextSpan( text: ' code that we have sent to you  through  email ',style: GoogleFonts.montserrat(fontWeight: FontWeight.w300, ),), TextSpan( text: 'mfkhan816@gmail.com',style: GoogleFonts.montserrat(color: Colors.white, fontWeight: FontWeight.w500, ),), ],), textAlign: TextAlign.center, )
            ,SizedBox(height: 0.02.sh),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(alignment: const Alignment(0.0,0.04),
                  padding: EdgeInsets.only(top: 22.sp
                      ,left: 18),
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: appcolors.onboardingcontainercolor,border: Border.all(width: 1.0, color: state==true? appcolors.successcolor : appcolors.onboardingcontainercolor.withOpacity(0.1),)),
              child: TextField(
                onChanged: (e)
                  {
                  myFocusNode.requestFocus();
                  },
                controller: controllerotp,
                maxLength: 1,
        decoration: const InputDecoration(
                  counterText: " ",
                  contentPadding: EdgeInsets.only( bottom: 10),
                  border: InputBorder.none

              ),
                scribbleEnabled: false,
                enableIMEPersonalizedLearning: false,
                keyboardType: TextInputType.number,
                style: GoogleFonts.montserrat(color: Colors.white),
                  inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly]
              ),
                ),
                  Container(alignment: const Alignment(0.0,0.04),
                    width: 50,
                    height: 50,  padding: EdgeInsets.only(top: 22.sp
                        ,left: 18.sp),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: appcolors.onboardingcontainercolor,border: Border.all(width: 1.0, color: state==true? appcolors.successcolor : appcolors.onboardingcontainercolor.withOpacity(0.1),)),
                    child: TextField(
                      onChanged: (e){

                        myFocusNode1.requestFocus();
                      },
                      focusNode: myFocusNode,
                      controller: controllerotp1,
                        decoration:   const InputDecoration(
                        counterText: " ",
                        contentPadding: const EdgeInsets.only( bottom: 10),
                        border: InputBorder.none

                    ),
                      maxLength: 1,
                      keyboardType: TextInputType.number,
                      style: GoogleFonts.montserrat(color: Colors.white),
                        inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly]
                    ),
                ),
                Container(alignment: const Alignment(0.0,0.04),
                  width: 50,
                  height: 50,
                  padding: EdgeInsets.only(top: 22.sp
                      ,left: 18),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: appcolors.onboardingcontainercolor,border: Border.all(width: 1.0,color: state==true? appcolors.successcolor : appcolors.onboardingcontainercolor.withOpacity(0.1),)),
                  child: Center(
                    child: TextField(
                      focusNode: myFocusNode1,
                        onChanged: (e){

                          myFocusNode2.requestFocus();
                        },
                      controller: controllerotp2,

                        decoration: const InputDecoration(
                        counterText: " ",
                      contentPadding: const EdgeInsets.only( bottom: 10),
                      border: InputBorder.none

                    ),
                      keyboardType: TextInputType.number,
                      style: GoogleFonts.montserrat(color: Colors.white),
                        inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly]
                    ),
                  ),
                ),
                Container(alignment: const Alignment(0.0,0.04),
                  width: 50,
                  height: 50,

                  padding: EdgeInsets.only(top: 22.sp
                      ,left: 18),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(4),color: appcolors.onboardingcontainercolor,border: Border.all(width: 1.0, color: state==true? appcolors.successcolor : appcolors.onboardingcontainercolor.withOpacity(0.1),)),
                  child: TextField(
                    focusNode: myFocusNode2,
                    maxLength: 1,
                      controller: controllerotp3,
                      decoration: const InputDecoration(
                      counterText: " ",
                      contentPadding: EdgeInsets.only( bottom: 10),
                      border: InputBorder.none

                  ),
                      onChanged: (value)
                      {
                   var newvalue = controllerotp.text+controllerotp1.text+controllerotp2.text+value.toString();
debugPrint(newvalue);
if(newvalue==valucompare) {
  context.read<successcontroller>().boolcheck(state: true);
} else {
  context.read<successcontroller>().boolcheck(state: false);
}
                   debugPrint(state.toString());

                      },
                    keyboardType: TextInputType.number,
                    style: GoogleFonts.montserrat(color: Colors.white),
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly]
                  ),
                ),
              ],
            )
,
            SizedBox(height: 0.02.sh),
  state == false?
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.sp),
          child: SizedBox(
            width: 58.0,
            height: 19.0,
            child: Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                 Expanded(flex:0, child: Image.asset('assets/images/clock.png')),
                SizedBox(width: 0.02.sw),
                Expanded(

                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '00:10',
                      style: GoogleFonts.montserrat(
                        fontSize: 12.0,
                        color: const Color(0xFF5F606A),
                        fontWeight: FontWeight.w500,
                        height: 2.0,
                      ),
                    ),
                  ),
                ),
             Expanded(child: Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10.0),
               child: Text('Resend Code',style: GoogleFonts.montserrat(fontSize: 14.0.sp, color: appcolors.buttoncolor, fontWeight: FontWeight.w600, height: 1.71, ),),
             ))
              ],
            ),
          ),
        )
:
  Padding(
    padding:
    EdgeInsets.symmetric(horizontal: 25.0.sp),
    child: Row(
                      children: <Widget>[
                        const Expanded(flex: 1, child: Align(alignment: Alignment.bottomRight, child: Icon(BitborgIcons.shield_check,color: appcolors.successcolor,))),
                        SizedBox(width: 0.02.sw),
          Expanded(
            flex: 0,
            child: Text(
              'Code is Verrified',
              style: GoogleFonts.montserrat(
                fontSize: 14.0,
                color: appcolors.successcolor,
                fontWeight: FontWeight.w600,
                height: 1.71,
              ),
            ),
          )


                      ],
                    ),
  ),
        SizedBox(height: 34.h,),
        Container(

          width: 327.0.h,
          height: 44.0.h,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), color: state==true? appcolors.buttoncolor : appcolors.onboardingcontainercolor ),
child:  Center(child: Text('Continue',style: GoogleFonts.montserrat(color: Colors.white),)),
        )

          ],

        ),
      ),
    );
  },
));
  }
}
