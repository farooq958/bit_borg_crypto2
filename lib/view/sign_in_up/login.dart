import 'package:bit_borg_crypto/controllers/utils/Bitborgicons.dart';
import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:bit_borg_crypto/view/dashboard/dashboard.dart';
import 'package:bit_borg_crypto/view/sign_in_up/create_account.dart';
import 'package:bit_borg_crypto/view/sign_in_up/otp_verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formloginkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: 1.sw,
          height: 1.sh,
          color: appcolors.primarycolor,
          child: ListView(children: [
            SizedBox(
              height: 30.sp,
            ),
            Image.asset(
              'assets/images/bitborg1.png',
              width: 153.72.sp,
              height: 38.7.sp,
            ),
            SizedBox(
              height: 0.07.sh,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.sp),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'LogIn',
                    style: GoogleFonts.montserrat(
                        color: Colors.white, fontSize: 24),
                  )),
            ),
            SizedBox(
              height: 0.01.sh,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.sp),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Please enter email & password to login",
                    style: GoogleFonts.montserrat(
                        color: appcolors.lighttextcolor, fontSize: 14),
                  )),
            ),
            SizedBox(
              height: 0.04.sh,
            ),
            Container(
              height: 0.4.sh,
              color: appcolors.primarycolor,
              child: Form(
                  key: formloginkey,
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.sp),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Email',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(
                        height: 0.01.sh,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0.sp),
                        child: Container(
                          height: 44.sp,
                          decoration: BoxDecoration(
                            color: appcolors.textfieldcolor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: Icon(
                                  BitborgIcons.envelope,
                                  color: Colors.white,
                                size: 20.sp,),
                                contentPadding: EdgeInsets.only(bottom: 0.sp,top: 0),
                                hintText: "John@gmail.com",
                                hintStyle: GoogleFonts.montserrat(
                                    color: appcolors.textfieldtextcolor),
                                fillColor: Colors.lightBlue,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),

                                  // borderSide: BorderSide(color:appcolors.lighttextcolor ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide:const BorderSide(
                                        color: appcolors.lighttextcolor))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.02.sh,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.sp),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Password',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            )),
                      ),
                      SizedBox(
                        height: 0.01.sh,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0.sp),
                        child: Container(
                          height: 44.sp,
                          decoration: BoxDecoration(
                            color: appcolors.textfieldcolor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.lock_outlined,
                                  color: Colors.white,
                                ),
                                contentPadding: EdgeInsets.only(bottom: 0,top:0.sp),
                                hintText: "******",
                                suffixIcon: Icon(Icons.remove_red_eye,
                                    size: 30.sp,
                                    color: appcolors.textfieldtextcolor),
                                hintStyle: GoogleFonts.montserrat(
                                    color: appcolors.textfieldtextcolor),
                                fillColor: Colors.lightBlue,
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),

                                  // borderSide: BorderSide(color:appcolors.lighttextcolor ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(4),
                                    borderSide: const BorderSide(
                                        color: appcolors.lighttextcolor))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.01.sh,
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: 18.sp),
                        child: Align(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => const otpscreen()));
                                },
                                child: Text(
                                  'Forgot Your Password?',
                                  style: GoogleFonts.montserrat(
                                      color: appcolors.buttoncolor,
                                      fontWeight: FontWeight.bold),
                                ))),
                      ),
                      SizedBox(
                        height: 0.05.sh,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 18.0.sp, right: 18.sp),
                        child: GestureDetector(
                          onTap: ()
                          {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> const dashboard()));
                          },
                          child: Container(
                            width: 34.w,
                            height: 44.h,
                            decoration: BoxDecoration(
                                color: appcolors.buttoncolor,
                                borderRadius: BorderRadius.circular(4)),
                            child: Center(
                                child: Text(
                              'Log In',
                              style: GoogleFonts.montserrat(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            )),
                          ),
                        ),
                      ),
                      // SizedBox(height: 0.09.sh,),

                      // SizedBox(height: 0.09.sh,),
                    ],
                  )),
            ),
            SizedBox(
              height: 150.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const createaccount()));
                    },
                    child: Text.rich(TextSpan(
                      text: "Don't have an account ? ",
                      style: GoogleFonts.montserrat(
                          color: appcolors.lighttextcolor),
                      children: <TextSpan>[
                        TextSpan(
                            text: 'Create Account',
                            style: GoogleFonts.montserrat(
                                color: appcolors.buttoncolor)),
                        // can add more TextSpans here...
                      ],
                    )),
                  )),
            ),
          ]),
        ),
      ),
    );
  }
}
