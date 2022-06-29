import 'package:bit_borg_crypto/controllers/utils/Bitborgicons.dart';
import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class termandcondition extends StatefulWidget {
  const termandcondition({Key? key}) : super(key: key);

  @override
  State<termandcondition> createState() => _termandconditionState();
}

class _termandconditionState extends State<termandcondition> {
  @override
  Widget build(BuildContext context) {
    String Text1 = "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one of the four basic modes.";
    String Text2= "Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one of the four basic modes.";
    String Text3="Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one of the four basic modes.";
    String Text4="Description is the pattern of narrative development that aims to make vivid a place, object, character, or group. Description is one of four rhetorical modes, along with exposition, argumentation, and narration. In practice it would be difficult to write literature that drew on just one of the four basic modes.";
    return   Scaffold(
      body: Container(
        height: 1.sh,
        width: 1.sw,
        color: appcolors.primarycolor,
        child: Padding(
          padding:  EdgeInsets.only(top:20,left: 35.0.sp,right: 35.sp),
          child:   ListView(
            children: [
              Align(alignment:Alignment.bottomLeft,child: GestureDetector(onTap: (){
                Navigator.pop(context);
              },
                  child: Icon(BitborgIcons.arrow_right,color: Colors.white,size: 20,))),

              SizedBox(height: 0.02.sh),
              Text('Terms & Conditions',style: GoogleFonts.montserrat(fontSize: 24 ,color: Colors.white,fontWeight: FontWeight.bold),)
,
              Text(Text1,style: GoogleFonts.montserrat(fontWeight: FontWeight.w300,color: Colors.white,fontSize: 15.sp,height: 1.4),),
              SizedBox(height: 0.03.sh),
              Text(Text2,style: GoogleFonts.montserrat(fontWeight: FontWeight.w300,height: 1.4,color: Colors.white,fontSize: 15.sp),),
              SizedBox(height: 0.03.sh),
              Text(Text3,style: GoogleFonts.montserrat(fontWeight: FontWeight.w300,height:1.4,color: Colors.white,fontSize: 15.sp),),
              SizedBox(height: 0.03.sh),
              Text(Text3,style: GoogleFonts.montserrat(fontWeight: FontWeight.w300,height:1.4,color: Colors.white,fontSize: 15.sp),),

            ],

          ),
        ),

      ),
    );
  }
}
