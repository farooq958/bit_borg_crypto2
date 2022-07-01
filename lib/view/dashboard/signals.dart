import 'package:bit_borg_crypto/controllers/signal_cubit.dart';
import 'package:bit_borg_crypto/controllers/utils/Bitborgicons.dart';
import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:bit_borg_crypto/controllers/utils/shared_components/sharedcomponent.dart';
import 'package:bit_borg_crypto/model/signal_model.dart';
import 'package:bit_borg_crypto/view/dashboard/signal_details_page/signalsdetailpage.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';



class signalscreen extends StatefulWidget {
  const signalscreen({Key? key}) : super(key: key);

  @override
  State<signalscreen> createState() => _signalscreenState();
}

class _signalscreenState extends State<signalscreen> {
  List<signallist> signallistt = getlist1();
  var shareed= sharedcomponent();
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 800.w, height: 450.h,
      child: BlocBuilder<signalCubit, int>(
        builder: (context, state) {
          return ListView(
            children: [
              Container(
                color: appcolors.primarycolor,
                height: 33.h,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.0.sp),
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, int index) {
                      return Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              context
                                  .read<signalCubit>()
                                  .getincrementindex(state: index);
                              debugPrint(state.toString());
                            },
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 0,
                                  child: Text(
                                    signallistt[index].title!,
                                    style: GoogleFonts.montserrat(
                                        color: state == index
                                            ? appcolors.buttoncolor
                                            : appcolors.lighttextcolor,
                                        fontSize:
                                        state == index ? 14.0.sp : 11.sp),
                                  ),
                                ),
                                SizedBox(width: 0.09.sw)
                              ],
                            ),
                          ),
                          state == index
                              ? Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.only(right: 34.0.sp),
                                child: const Icon(
                                  BitborgIcons.brightness_1,
                                  color: appcolors.buttoncolor,
                                  size: 10,
                                ),
                              ))
                              : Expanded(
                              flex: 0,
                              child: Padding(
                                padding: EdgeInsets.only(right: 34.0.sp),
                                child: const Icon(
                                  BitborgIcons.brightness_1,
                                  color: appcolors.primarycolor,
                                  size: 1,
                                ),
                              ))
                        ],
                      );
                    },
                    itemCount: signallistt.length,
                  ),
                ),
              ),

          state == 0
          ? SizedBox(
          height: 600.h,
          width: 400.w,

          child: ListView(
            children: [
              SizedBox(
                height: 0.02.sh,
              ),
              Row(
                            children: <Widget>[
                              Expanded( flex:0,child: Image.asset('assets/images/bitcoin-cash-bch-logo.png')),
                              SizedBox(
                                width: 0.02.sw,
                              ),

                              Expanded(
                   child: Text(
              'Hold BCH USDT for Long term to enjoy heavy gains!',
              style: GoogleFonts.montserrat(
                fontSize: 12.0,
                color: const Color(0xFF8DC351),
                letterSpacing: 0.12,
                fontWeight: FontWeight.w300,
                height: 1.5,
              ),
            ),
                 ),



                            ],
                          ),
              SizedBox(
                height: 0.02.sh,
              ),
InkWell(
    onTap: (){
      Navigator.push(context , MaterialPageRoute(builder: (context)=> const signalsdetailpage(check: 0,)));},
    child: shareed.reusablecontainersignal(0,context,appcolors.targetsignalcolor, "Low Risk",'Hold')),
              SizedBox(
                height: 0.01.sh,
              ),
              InkWell(   onTap: (){
    Navigator.push(context , MaterialPageRoute(builder: (context)=> const signalsdetailpage(check: 1,)));}
    ,child: shareed.reusablecontainersignal(0,context,Colors.red, "high risk",'scalp')),
              SizedBox(
                height: 0.009.sh,
              ),
              shareed.reusablecontainersignal(0,context,appcolors.targetsignalcolor, "Low Risk",'Hold'),
                        ],

          ),

          )
              :
              Container(color: appcolors.buttoncolor, width: 200,height: 200,)


            ],

          );
        },
      ),


    );
  }
}
