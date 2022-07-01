import 'package:bit_borg_crypto/controllers/alertCubit.dart';
import 'package:bit_borg_crypto/controllers/newspage_cubit.dart';
import 'package:bit_borg_crypto/controllers/utils/Bitborgicons.dart';
import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:bit_borg_crypto/controllers/utils/shared_components/sharedcomponent.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../model/newsmodel.dart';
import 'newspages/newsdetails.dart';


class newsscreen extends StatefulWidget {
  const newsscreen({Key? key}) : super(key: key);

  @override
  State<newsscreen> createState() => _newsscreenState();
}

class _newsscreenState extends State<newsscreen> {
  List<newslistmodel> newslist = getlist();




var sharedc= sharedcomponent();

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 800.h,
      width: 400.w,
      child: BlocBuilder<newspageCubit, int>(
        builder: (context, state) {
          return ListView(children: [
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
                                .read<newspageCubit>()
                                .getincrementindex(state: index);
                            debugPrint(state.toString());
                          },
                          child: Row(
                            children: [
                              Expanded(
                                flex: 0,
                                child: Text(
                                  newslist[index].title!,
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
                  itemCount: newslist.length,
                ),
              ),
            ),
            state == 0
                ? Container(
                    height: 600,
                    width: 400,
                    child: ListView(
                      children: [
                        SizedBox(
                          height: 0.02.sh,
                        ),
                        Text(
                          '100 News Found',
                          style: GoogleFonts.montserrat(
                              color: appcolors.lighttextcolor,
                              fontWeight: FontWeight.w200),
                        ),
                        SizedBox(
                          height: 0.02.sh,
                        ),
                       sharedc.reusablecontainernews(context,appcolors.negativecolor, 'Negative'),
                        SizedBox(
                          height: 0.02.sh,
                        ),
                        sharedc.reusablecontainernews(context,appcolors.successcolor, 'Positive'),

                        SizedBox(
                          height: 0.02.sh,
                        ), sharedc.reusablecontainernews(context,appcolors.lighttextcolor, 'Neutral'),

                        SizedBox(
                          height: 0.02.sh,
                        ),sharedc.reusablecontainernews(context,appcolors.negativecolor, 'Negative'),
                        SizedBox(
                          height: 0.02.sh,
                        ),
                      ],
                    ),
                  )
                : state == 1
                    ? //favoritecoin page
                    Container(
                        height: 600,
                        width: 400,
                        child: BlocBuilder<alertCubit, bool>(
  builder: (context, state) {
    return ListView(
                          children: [
                            SizedBox(
                              height: 0.02.sh,
                            ),
                            Row(
                              children: <Widget>[
                                state==false?
                                const Expanded(
                                    flex: 0,
                                    child:  Icon(
                                      Icons.favorite_border_outlined,
                                      color: Colors.white,
                                    )):
                                Expanded(
                                  flex:0,
                                  child: Container(height: 0,width: 0,),),

                                SizedBox(
                                  width: 0.01.sh,
                                )
         ,
                                state==false?
                                Expanded(
                                    flex: 0,
                                    child: Align(
                                        alignment: Alignment.topRight,
                                        child: InkWell(
                                          onTap: () {
                                            context.read<alertCubit>().boolcheck(state: true);
                                         sharedc.Alerty(context, "Favourite Coins", "3 Coins Found",'assets/images/Group 1107.png',1,0);
                                          },
                                          child: Text(
                                            'Favourite Coins',
                                            style: GoogleFonts.montserrat(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ))):
                                        Expanded(
                                        flex:0,
    child: Text(
    '100 News Found',
    style: GoogleFonts.montserrat(
    color: appcolors.lighttextcolor,
    fontWeight: FontWeight.w200),
    ),),


                                Expanded(
                                    child: Align(
                                        alignment: Alignment.topRight,
                                        child: InkWell(
                                          onTap: ()
                                          {
                                            context.read<alertCubit>().boolcheck(state: true);

                                        sharedc.Alerty(context, "Add Your Favourite Coins", "E.g BTC, Eth, BNB etc","assets/images/bitcoingroup.png",0,0);
                                          },
                                          child: Text(
                                            '+ Add Coin',
                                            style: GoogleFonts.montserrat(
                                                color: appcolors.buttoncolor,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        )))
                              ],
                            ),
                            SizedBox(
                              height: 0.02.sh,
                            ),
                            state==false ?
                            Text(
                              '100 News Found',
                              style: GoogleFonts.montserrat(
                                  color: appcolors.lighttextcolor,
                                  fontWeight: FontWeight.w200),
                            )
                            :
        SizedBox(height: 0,width: 0,),
                            SizedBox(
                              height: 0.02.sh,
                            ),
                            sharedc.reusablecontainernews(
                                context,appcolors.negativecolor, 'Negative'),
                            SizedBox(
                              height: 0.02.sh,
                            ),
                            sharedc.reusablecontainernews(
                                context, appcolors.successcolor, 'Positive'),
                            SizedBox(
                              height: 0.02.sh,
                            ),
                            sharedc.reusablecontainernews(
                                context, appcolors.lighttextcolor, 'Neutral'),
                            sharedc.reusablecontainernews(
                                context, appcolors.negativecolor, 'Negative'),
                          ],
                        );
  },
),
                      )
                    : Container(height: 400, color: Colors.deepOrange)
          ]);
        },
      ),
    );
  }
}
