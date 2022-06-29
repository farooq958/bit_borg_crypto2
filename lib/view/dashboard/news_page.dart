import 'package:bit_borg_crypto/controllers/newspage_cubit.dart';
import 'package:bit_borg_crypto/controllers/utils/Bitborgicons.dart';
import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/newsmodel.dart';
import 'newspages/all_news.dart';
import 'newspages/favorite_news.dart';
import 'newspages/neutral_news.dart';
import 'newspages/popular_news.dart';

class newsscreen extends StatefulWidget {
  const newsscreen({Key? key}) : super(key: key);

  @override
  State<newsscreen> createState() => _newsscreenState();
}

class _newsscreenState extends State<newsscreen> {

  List<newslistmodel> newslist = getlist();
Widget resuablecontainer(Color texttcolor,String Textt )
{
  return Container(

    width: 354.w,
     height: 160.h,
    decoration: BoxDecoration(
    color: appcolors.onboardingcontainercolor,
    borderRadius: BorderRadius.circular(4)

    ),
child: Padding(
  padding:  EdgeInsets.all(10.0.sp),
  child:   Row(



    children: <Widget>[

      Expanded( flex: 0, child: Align(alignment:Alignment.topLeft,child: Image.asset('assets/images/Mask Group 1.png' ,width: 68.w,height: 67.h,)))

  ,



      Padding(
        padding:  EdgeInsets.only(left: 8.0.sp),
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

                color:texttcolor,

                fontWeight: FontWeight.w500,

              ),

            ),

        ),



          ),
SizedBox(width: 90.w,),

Expanded( flex:0,child: Align(alignment:Alignment.topRight , child: Text("20 July,2021",style: GoogleFonts.montserrat(fontSize: 12,color: appcolors.lighttextcolor),)))


                    ],

                  ),


SizedBox(height:15.h)
,
            Expanded(flex: 0, child: Text("Bitcoin's ‘Upgrade for the Ages'",style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.w700),)),
            Expanded(flex:0,child: Padding(
              padding:  EdgeInsets.only( right: 110.0.sp),
              child: Text('Taproot is Here ',style: GoogleFonts.montserrat( color: Colors.white,fontWeight: FontWeight.w700),),
            )),
            SizedBox(height: 10.h
              ,),

            Expanded(flex:0,child: Text('The best Bitcoin casinos offer almost ',style: GoogleFonts.montserrat(color: appcolors.lighttextcolor,fontSize: 12),)),

            Expanded(flex:0,child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text('instant withdrawals, zero transaction  ',style: GoogleFonts.montserrat(color: appcolors.lighttextcolor,fontSize: 12),),
            )),

            Expanded(flex:0,child: Padding(
              padding:  EdgeInsets.only(right: 12.0.sp),
              child: Text('fees, anonymous transfers, as well ',style: GoogleFonts.montserrat(color: appcolors.lighttextcolor,fontSize: 12),),
            ))



                ],

        ),
      ),









    ],



  ),
),
  );

}
  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: 800.h,
        width: 400.w,
        child: BlocBuilder<newspageCubit, int>(
  builder: (context, state) {
    return ListView(

            children: [
              Container(
                color: appcolors.primarycolor,
                height: 33.h,
                child:  Padding(
                      padding:  EdgeInsets.only(left: 18.0.sp),
                      child: ListView.builder(

                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, int index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: (){
                                  context.read<newspageCubit>().getincrementindex(state: index);
                                  debugPrint(state.toString());

                                },
                                 child: Row(
                                   children: [
                                     Expanded(
                                       flex:0,
                                       child: Text(newslist[index].title!,
                                        style: GoogleFonts.montserrat(color:state==index? appcolors.buttoncolor:appcolors.lighttextcolor,fontSize: state==index?14.0.sp:11.sp),),
                                     ),
                                     SizedBox(width: 0.09.sw)
                                   ],
                                 ),
                              ),

                              state==index ?
                               Expanded(flex:0, child:  Padding(
                                padding: EdgeInsets.only(right: 34.0.sp),
                                child: const Icon(BitborgIcons.brightness_1 ,color: appcolors.buttoncolor,size: 10,),
                              ))
                                  :
                              Expanded(flex:0, child:  Padding(
                                padding: EdgeInsets.only(right: 34.0.sp),
                                child: const Icon(BitborgIcons.brightness_1 ,color: appcolors.primarycolor,size: 1,),
                              ))
                            ],
                          );
                        },

                        itemCount: newslist.length,


                      ),
                    ),

                ),

state==0 ?
    Container(height: 600,
    width: 400,
    child: ListView(
      children: [
SizedBox(height: 0.02.sh,),
        Text('100 News Found',style: GoogleFonts.montserrat(color: appcolors.lighttextcolor ,fontWeight: FontWeight.w200),)
,SizedBox(height: 0.02.sh,),
        resuablecontainer(appcolors.negativecolor,'Negative'),
        resuablecontainer(appcolors.successcolor,'Positive'),
        resuablecontainer(appcolors.lighttextcolor,'Neutral'),
        resuablecontainer(appcolors.negativecolor,'Negative'),
      ],

    ),
    )
    :
    state==1?     //favoritecoin page
    Container(height: 600,
      width: 400,
      child: ListView(
        children: [
          SizedBox(height: 0.02.sh,),
          Row(
                              children: <Widget>[
                           const     Expanded(flex:0,child: const Icon(Icons.favorite_border_outlined,color: Colors.white,)),
                                SizedBox(width: 0.01.sh,),
                                Expanded(flex:0,child:  Align(alignment:Alignment.topRight,child: Text('Favourite Coins',style: GoogleFonts.montserrat(color: Colors.white,fontWeight: FontWeight.bold),)))
                              ,  Expanded( child:  Align( alignment:Alignment.topRight,child: Text('+ Add Coin',style: GoogleFonts.montserrat(color: appcolors.buttoncolor,fontWeight: FontWeight.bold),)))

                              ],
                            ),
          SizedBox(height: 0.02.sh,),
                            Text('100 News Found',style: GoogleFonts.montserrat(color: appcolors.lighttextcolor ,fontWeight: FontWeight.w200),)
          ,SizedBox(height: 0.02.sh,),
          resuablecontainer(appcolors.negativecolor,'Negative'),
          SizedBox(height: 0.02.sh,),
          resuablecontainer(appcolors.successcolor,'Positive'),
          SizedBox(height: 0.02.sh,),
          resuablecontainer(appcolors.lighttextcolor,'Neutral'),
          resuablecontainer(appcolors.negativecolor,'Negative'),
        ],

      ),
    )
             :
    Container(height:400,color: Colors.deepOrange)
            ]
        );
  },
),
      );
  }
}
