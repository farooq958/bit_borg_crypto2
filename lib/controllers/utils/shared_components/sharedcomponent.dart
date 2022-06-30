

import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:bit_borg_crypto/view/dashboard/newspages/newsdetails.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../view/dashboard/signal_details_page/signalsdetailpage.dart';
import '../../alertCubit.dart';
import '../Bitborgicons.dart';

class sharedcomponent{
void  Alerty(BuildContext context, String TTexty, String Texty,String imagepath ,int check,int check2) {
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
                  alignment:check2==0? Alignment(-0.2,0.03):Alignment(-0.9, 0),
                  width: 235.0,
                  height: 44.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), color:check2==0? appcolors.lighttextcolor: appcolors.textfieldcolor, border: Border.all(width: 1.0, color: appcolors.lighttextcolor,), ),
                  child:Text( check2==0?'Separate coin with "," (BTC,ETH)':"Email",style: GoogleFonts.montserrat(fontSize: 12.0, color:Colors.white, letterSpacing: 0.12, fontWeight: FontWeight.w300, height: 1.5, ),),
                ),
              ),

              SizedBox(height: 0.03.sh,),

              Center(
                child: Container(
                  alignment:const Alignment(-0.01,0.04),
                  width: 235.0.w,
                  height: 44.0.h,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), color: appcolors.buttoncolor, ),
                  child:Text( check2==0?'Add Coin':"Let Me Know",style: GoogleFonts.montserrat(fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w500, height: 1.88, )),
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
Widget reusablecontainernews(BuildContext context ,Color texttcolor, String Textt) {
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
Widget reusablecontainersignal(int check,BuildContext context,Color highlowcolor,String highorlow,String scalporhold)
{
  return InkWell(
    onTap: (){
      Navigator.push(context , MaterialPageRoute(builder: (context)=> const signalsdetailpage(check: 0,)));

    },
    child: Stack(
      children: [
        Container(
          width: 354.w,
          height:check==0? 180.h:157.h,
          decoration: BoxDecoration(
              color: appcolors.onboardingcontainercolor,
              borderRadius: BorderRadius.circular(4)),


        ),
        Positioned(
          top: 15.sp,
          left: 15.sp,
          child: Column(
              children: <Widget>[
                Expanded(flex: 0,child: Padding(
                  padding:  EdgeInsets.only(right: 10.0.sp),
                  child: Image.asset('assets/images/pair logos.png',height: 28.h,width: 58.w,),
                ))

    ,
                Expanded(flex: 0, child: Text('BTC USDT',style: GoogleFonts.montserrat(fontSize: 14.0, color: Colors.white, fontWeight: FontWeight.w500, ),))
                ,
                SizedBox(height: 0.01.sh,),
                Expanded(flex: 0, child: Text('Buy / Long',style: GoogleFonts.montserrat(fontSize: 14.0, color: Colors.white, ),))
],
            ),
        ),

        Positioned(bottom: 20.sp ,left: 15.sp, child: Text.rich(TextSpan(  style: GoogleFonts.montserrat(fontSize: 12.0, color: Colors.white, ),  children: [TextSpan( text: 'Current Price \n ',style: GoogleFonts.montserrat(fontWeight: FontWeight.w500, ),), TextSpan( text: '+21.2 %',style: GoogleFonts.montserrat(color: appcolors.successcolor, fontWeight: FontWeight.w500, ),), ],), )),

         Positioned(
           top: check==0? 15.sp : 10.sp,
           left:check==0? 160.sp:280,

           child: SizedBox(
             width: 28.w,
             height: 28.h,
             child: ListView(
                children: <Widget>[

                  Icon(BitborgIcons.icon_ionic_md_stats,color: appcolors.buttoncolor, size: 20.sp,),
                  Text('Stats',style: GoogleFonts.montserrat(fontSize: 8.0, color: Colors.white, fontWeight: FontWeight.w600, shadows: [Shadow(color: Colors.black.withOpacity(0.16), offset: Offset(0, 3.0), blurRadius: 6.0, ),], ),)

                ],
              ),
           ),
         ),
        Positioned(
          top: 50.sp,
          left: 140.sp,

          child: SizedBox(
            width: 59.w,
            height: 40.h,
            child: ListView(
              children: <Widget>[
Padding(
    padding:  EdgeInsets.only(left: 15.0.sp),
    child:   Text('Binance',style: GoogleFonts.montserrat(color: appcolors.lighttextcolor , fontWeight: FontWeight.bold,fontSize: 8.sp),),
)
               ,
                SizedBox(height: 0.01.sh,),
                Container(

                  width: 59.0,
                  height: 22.0,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), border: Border.all(width: 1.0, color:appcolors.lighttextcolor,), ),
child: Center(child: Text(scalporhold,style: GoogleFonts.montserrat(color: Colors.white ,fontWeight: FontWeight.bold),)),
                )


              ],
            ),
          ),
        ),
        Positioned(
          right: 30.sp,
          top:check==0? 15.sp: 40.sp,
          child: SizedBox(
            width: 60.w,
            height: 48.h,
            child: ListView(
                children: <Widget>[
                  Text(check==0? 'Spot':"Futures",style: GoogleFonts.montserrat(color: appcolors.lighttextcolor,fontWeight: FontWeight.bold),)
                  ,
                  SizedBox(height: 0.0051.sh,),
                  Container(
                    alignment: Alignment.center,
                    width: 66.0,
                    height: 27.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4.0),
                      border: Border.all(
                        width: 1.0,
                        color:  highlowcolor,
                      ),
                    ),
                    child: Text(
                      highorlow,
                      style: GoogleFonts.montserrat(
                        fontSize: 12.0,
                        color:  highlowcolor,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  )
              ],
              ),
          ),
        ),
        Positioned(
          right: 20.sp,
          top: check==0?70.sp:90.sp,
          child: check==0?
          Container(
            width: 87.0,
            height: 30.0,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), color: appcolors.targetsignalcolor, border: Border.all(width: 1.0, color: appcolors.targetsignalcolor,), ),
child: Row(
    children: <Widget>[
      Icon(BitborgIcons.signals,color: Colors.white,size: 20.r,),
      Text('Target 4',style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w600))

    ],
),

            ) :
          Padding(
            padding:  EdgeInsets.only(top: 18.0.sp),
            child: Text.rich(TextSpan(  style: GoogleFonts.montserrat(fontSize: 12.0, color: appcolors.lighttextcolor, ),  children: [TextSpan( text: 'Buying Zone\n',), TextSpan( text: '\$ 1290 - \$ 1329',style: GoogleFonts.montserrat(fontSize: 14.0, color:appcolors.successcolor, fontWeight: FontWeight.w500, ),), ],), textAlign: TextAlign.center, ),
          )
        ),
        Positioned(
          bottom: 20.sp,
          right: 10.sp,
          child: check==0? Text(
            '10:20 Pm 23/06/2021',
            style: GoogleFonts.montserrat(
              fontSize: 10.0,
              color: const Color(0xFF999999),
              fontWeight: FontWeight.w600,
            ))
              :
              Container(width: 0,height: 0,)

          ),

        ],
    ),
  );

}


Widget reusableappbar(BuildContext context,String middleText)
{
  return  Container(
    height: 80.h,
    width: 375.h,

    color: appcolors.onboardingcontainercolor,

    child: Padding(
      padding:  EdgeInsets.only(right: 15.0.sp ,left: 15.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              flex: 0,
              child: Align(
                  alignment: Alignment.center,
                  child:InkWell(onTap: (){
                    Navigator.pop(context);
                  }, child: Icon(BitborgIcons.arrow_right ,size: 15.sp,)) )),
          Expanded(
flex: 2,
            child:  Padding(
              padding:  EdgeInsets.only(right: 20.sp),
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(middleText,style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold),
                ),
              ),
            ),
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
  ) ;


}

Widget reusabletargetconatiner()
{
  return Container(
    height: 76.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(width: 2.0.sp ,color: appcolors.onboardingcontainercolor)
    ),
    child: ListView(
      children: <Widget>[
        SizedBox(height: 0.01.sh,),
        Row(
            children: <Widget>[
              SizedBox(width: 0.04.sw,),
                Expanded(flex: 0, child: const Icon(BitborgIcons.icon_open_target,color: appcolors.lighttextcolor,)),
              SizedBox(width: 0.04.sw,),

              Expanded( flex:0,child: Text('Target 1',style: GoogleFonts.montserrat(color: appcolors.lighttextcolor,fontSize: 16.sp),)),

              Expanded(child: Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Align(alignment: Alignment.topRight, child: Text("\$ 1200 ",style: GoogleFonts.montserrat(color: appcolors.successcolor,fontWeight: FontWeight.bold),)),
              ))

            ],
          ),
        Row(
          children: <Widget>[


          //  Expanded(flex: 0, child: const Icon(BitborgIcons.icon_open_target,color: appcolors.lighttextcolor,)),
            SizedBox(width: 0.14.sw,),

            Expanded( flex:0,child: Text('Leverage 12',style: GoogleFonts.montserrat(color: appcolors.signalyellowishcolor,fontSize: 14.sp),)),

            Expanded(child: Padding(
              padding:  EdgeInsets.only(right: 8.0.sp),
              child: Align(alignment: Alignment.topRight, child: Text("Stop Loss 1.93 ",style: GoogleFonts.montserrat(color: appcolors.redsignalcolor,fontWeight: FontWeight.w600),)),
            ))
          ],
        ),

        ],
    ),
      

  );

}

}

