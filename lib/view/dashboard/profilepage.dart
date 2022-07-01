import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:bit_borg_crypto/controllers/utils/shared_components/sharedcomponent.dart';
import 'package:bit_borg_crypto/view/sign_in_up/rest_passsword_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controllers/utils/Bitborgicons.dart';

class profilepage extends StatefulWidget {
  const profilepage({Key? key}) : super(key: key);

  @override
  State<profilepage> createState() => _profilepageState();
}

class _profilepageState extends State<profilepage> {
  var listofcountries = [
    "Country",
    "Pakistan",
    "India",
    "Australia",
    "Indonesia",
    "Dubai"
  ];
  var currentitem = "Country";
  sharedcomponent sd = sharedcomponent();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  drawer: Drawer(
    backgroundColor: appcolors.onboardingcontainercolor,
    child: sd.reusabledrawerchild(context),
  ),
      backgroundColor: appcolors.primarycolor,
appBar: AppBar(
backgroundColor: appcolors.onboardingcontainercolor,
  automaticallyImplyLeading: true,
  
  title: sd.reusableappbar(context, "Profile"),
),
body: Container(
    height: 1.sh,
    width: 1.sw,

    child: ListView(
children: [

         Column(
    children:  <Widget>[

  Expanded(flex: 0, child: SizedBox(height: 0.06.sh ,)),
  Expanded( flex: 0,
      child: Container(
        width: 40.w,
        height: 40.h,
        decoration: const BoxDecoration(
            shape: BoxShape.circle
            ,color: appcolors.buttoncolor
        ) ,
        child: Icon(BitborgIcons.user,color: Colors.white,size: 20.r,),
      )),
  Expanded(flex: 0, child: SizedBox(height: 0.009.sh ,)),
  Expanded(flex: 0, child:  Text('Muzamil Afridi',style: GoogleFonts.montserrat(fontSize: 16.0.sp, color: Colors.white, fontWeight: FontWeight.w700, ),),)
  ,
  Expanded(flex: 0, child: Text('mfkhan816@gmail.com',style: GoogleFonts.montserrat(fontSize: 12.0.sp, color: appcolors.lighttextcolor, letterSpacing: 0.12, fontWeight: FontWeight.w300, height: 1.5, ),))

  , Expanded(flex: 0, child: SizedBox(height: 0.009.sh ,)),

  Expanded(flex: 0, child: Container(
    width: 174.27.w,
    height: 40.0.h,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: appcolors.drawerbuttoncolor

    ),

  )),


  ],
),


   SizedBox(
     height: 0.599.sh,
     width: 400,
     child: Padding(
      padding:  EdgeInsets.only(right: 30.sp,left: 30.sp),
      child: ListView(
        children: [
          const Divider(
            color: appcolors.textfieldcolor,
          ),
          SizedBox(height: 0.04.sh,),
          Text(
            'Full Name',
            style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 0.01.sh,),
          Container(

            height: 60.h,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: appcolors.textfieldcolor),
child: Row(
  children: <Widget>[
    
    Expanded(child: Icon(BitborgIcons.user,color: Colors.white,)),
    Expanded( flex:4,child: Text('Muzammil Afridi',style: GoogleFonts.montserrat(fontSize: 16.sp ,fontWeight: FontWeight.bold,color: Colors.white),))
    
  ],
),
          ),
          SizedBox(height: 0.02.sh,),
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.sp),
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Country',
                        style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              ),
              Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(right: 18.0.sp),
                    child: Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          '[Optional]',
                          style: GoogleFonts.montserrat(
                              fontSize: 12,
                              color: appcolors.lighttextcolor),
                        )),
                  ))
            ],
          ),
          SizedBox(
            height: 0.01.sh,
          ),
          Container(
            height: 60.h,

            decoration: BoxDecoration(
              color: appcolors.textfieldcolor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: 0.04.sw,
                ),
                const Expanded(
                    flex: 0,
                    child: Icon(
                      BitborgIcons.globe,
                      color: Colors.white,
                    )),
                SizedBox(
                  width: 0.03.sw,
                ),
                Expanded(
                  child: DropdownButton<String>(
                    alignment: Alignment.bottomRight,
                    isExpanded: true,
                    isDense: true,
                    icon: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0.05.sw),
                            child: const Align(
                                alignment: Alignment.center,
                                child: Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                )))),
                    style: GoogleFonts.montserrat(
                        color: const Color(0xff7A7A7A)),
                    items: listofcountries
                        .map((String dropdownstringitem) {
                      return DropdownMenuItem<String>(
                          value: dropdownstringitem,
                          child: Text(dropdownstringitem));
                    }).toList(),
                    value: currentitem,
                    menuMaxHeight: 200,
                    onChanged: (String? e) {
                      setState(() {
                        currentitem = e!;
                      });
                    },
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 0.14.sh,
          ),
          Container(


            height: 44.0.h,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(4.0), color:  appcolors.buttoncolor  ),
            child:  Center(child: Text('Save Changes',style: GoogleFonts.montserrat(color: Colors.white),)),
          )
          ,SizedBox(
            height: 0.03.sh,
          ),
          InkWell(
            onTap: ()
            {

              Navigator.push(context, MaterialPageRoute(builder: (context)=> const resetpasswordscreen()));
            },
            child: Container(


              height: 44.0.h,
              decoration: BoxDecoration(
                  border: Border.all(color: appcolors.buttoncolor),
                  borderRadius: BorderRadius.circular(4.0), color:  appcolors.primarycolor  ),
              child:  Center(child: Text('Change Password',style: GoogleFonts.montserrat(color: appcolors.buttoncolor),)),
            ),
          )
        ],
      ),
  ),
   ),


],



    )),

    );
  }
}
