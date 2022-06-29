import 'package:bit_borg_crypto/controllers/utils/Bitborgicons.dart';
import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:bit_borg_crypto/view/sign_in_up/login.dart';
import 'package:bit_borg_crypto/view/sign_in_up/terms_condition.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class createaccount extends StatefulWidget {
  const createaccount({Key? key}) : super(key: key);

  @override
  State<createaccount> createState() => _createaccountState();
}

class _createaccountState extends State<createaccount> {
  var formAccountcreationkey = GlobalKey<FormState>();
  var listofcountries = [
    "Country",
    "Pakistan",
    "India",
    "Australia",
    "Indonesia",
    "Dubai"
  ];

  void Alerty(BuildContext context, String TTexty) {
    var alertdialog = AlertDialog(
        title: Text(TTexty),
        content: DropdownButton<String>(
          items: listofcountries.map((String dropdownstringitem) {
            return DropdownMenuItem<String>(
                value: dropdownstringitem, child: Text(dropdownstringitem));
          }).toList(),
          value: currentitem,
          onChanged: (String? e) {
            setState(() {
              currentitem = e;
            });
          },
        ));
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertdialog;
        });
  }

  bool check2 = false;
  bool check1 = true;
  String? currentitem = "Country";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 1.sh,
          width: 1.sw,
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
              height: 0.04.sh,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.sp),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Create Account',
                    style: GoogleFonts.montserrat(
                        color: Colors.white, fontSize: 24),
                  )),
            ),
            SizedBox(
              height: 0.027.sh,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0.sp),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Please enter below information for account creation.",
                    style: GoogleFonts.montserrat(
                        color: appcolors.lighttextcolor, fontSize: 14),
                  )),
            ),
            SizedBox(
              height: 0.04.sh,
            ),
            Form(
                key: formAccountcreationkey,
                child: Container(
                  height: .68.sh,
                  color: appcolors.primarycolor,
                  child: ListView(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.sp),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Full Name',
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
                          decoration: BoxDecoration(
                            color: appcolors.textfieldcolor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  BitborgIcons.user,
                                  color: Colors.white,
                                ),
                                contentPadding: EdgeInsets.only(bottom: 25.sp),
                                hintText: "Farooq Khan",
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
                        height: 0.02.sh,
                      ),
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
                          decoration: BoxDecoration(
                            color: appcolors.textfieldcolor,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  BitborgIcons.envelope,
                                  color: Colors.white,
                                ),
                                contentPadding: EdgeInsets.only(bottom: 25.sp),
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
                                    borderSide: BorderSide(
                                        color: appcolors.lighttextcolor))),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 0.02.sh,
                      ),
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
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0.sp),
                        child: Container(
                          height: 44.h,
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
                                      currentitem = e;
                                    });
                                  },
                                ),
                              )
                            ],
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
                                contentPadding: EdgeInsets.only(bottom: 25.sp),
                                hintText: "***",
                                suffixIcon: Icon(Icons.remove_red_eye,
                                    size: 35.sp,
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
                        height: 0.02.sh,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 0,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 18.sp),
                              child: Container(
                                width: 24.sp,
                                height: 24,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: check1 == true
                                        ? appcolors.buttoncolor
                                        : appcolors.textfieldcolor),
                                child: Checkbox(
                                  side: BorderSide.none,
                                  value: check1,
                                  onChanged: (value) {
                                    check1 = value!;
                                    setState(() {});
                                  },
                                  activeColor: appcolors.buttoncolor,
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                              flex: 0,
                              child: Text(
                                "Do you agree to Bitborg's ",
                                style: GoogleFonts.montserrat(
                                    color: appcolors.lighttextcolor,
                                    fontSize: 12),
                              )),
                          Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              termandcondition()));
                                },
                                child: Text(
                                  "Terms and Conditions? ",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 12,
                                      color: appcolors.lighttextcolor,
                                      decoration: TextDecoration.underline),
                                ),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 0.01.sh,
                      ),
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 0.84.sh,
                                width: 0.5.sw,
                                color: appcolors.onboardingcontainercolor,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      top: 20, left: 35.0.sp, right: 35.sp),
                                  child: ListView(
                                    children: [
                                      Row(
                                        children: <Widget>[
                                          Expanded(
                                              child: Align(
                                                  alignment:
                                                      Alignment.bottomLeft,
                                                  child: Text(
                                                    'Risk Warning ',
                                                    style:
                                                        GoogleFonts.montserrat(
                                                            fontSize: 20,
                                                            color:
                                                                Colors.white),
                                                  ))),
                                          Expanded(
                                              child: Align(
                                                  alignment:
                                                      Alignment.bottomRight,
                                                  child: GestureDetector(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Icon(
                                                        BitborgIcons
                                                            .cross_circle,
                                                        color: appcolors
                                                            .buttoncolor,
                                                      )))),
                                        ],
                                      ),
                                      SizedBox(height: 0.02.sh),
                                      Text(
                                        "Trading and investing in cryptocurrencies involve a substantial risk of loss and is not suitable for every person. The valuation of cryptocurrencies and related products may fluctuate and, as a result, clients may lose more than their original investment. Unless a person knows and fully understands the risks involved in cryptocurrencies, they should not engage in any transactions on the platform provided by Bitborg.",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w300,
                                            color: Colors.white,
                                            fontSize: 15.sp,
                                            height: 1.4),
                                      ),
                                      SizedBox(height: 0.02.sh),
                                      Text(
                                        " Users should not risk more than they are prepared to lose. Prior to opening an account with Bitborg or placing any orders, Users should carefully consider which Signal/Call is suitable for them, taking into account its nature, volatility and legality. If the User does not understand the risks related to cryptocurrencies, they should consult an independent financial advisor. If after obtaining proper legal and/or financial advice from a qualified professional, they still do not understand these risks, then they should refrain from using the services.",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w300,
                                            height: 1.4,
                                            color: Colors.white,
                                            fontSize: 15.sp),
                                      ),
                                      SizedBox(height: 0.02.sh),
                                      Text(
                                        " Bitborg is not providing the User with an investment, legal, regulatory or other form of advice. The User is required to rely on their ownjudgment (with or without the assistance of anadvisor) in using the services of Bitborg. Inasking to provide its services, the Userrepresents that they are solely responsible formaking their own independent appraisal andinvestigation into the risks of the Company’sservices.",
                                        style: GoogleFonts.montserrat(
                                            fontWeight: FontWeight.w300,
                                            height: 1.4,
                                            color: Colors.white,
                                            fontSize: 15.sp),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                            isScrollControlled: true,
                          );
                        },
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 0,
                              child: Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 18.sp),
                                child: Container(
                                  width: 24.sp,
                                  height: 24,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      color: check2 == true
                                          ? appcolors.buttoncolor
                                          : appcolors.textfieldcolor),
                                  child: Checkbox(
                                    value: check2,
                                    side: BorderSide.none,
                                    onChanged: (value) {
                                      check2 = value!;
                                      setState(() {});
                                    },
                                    activeColor: appcolors.buttoncolor,
                                    // checkColor: appcolors.textfieldtextcolor,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                                child: Text(
                              "Do you Acknowledge the Risk attached to trading? ",
                              style: GoogleFonts.montserrat(
                                  color: appcolors.lighttextcolor,
                                  fontSize: 12),
                            )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 0.01.sh,
                      ),
                      Container(
                        width: 0.9.sw,
                        height: 0.06.sh,
                        decoration: BoxDecoration(
                            color: appcolors.buttoncolor,
                            borderRadius: BorderRadius.circular(4)),
                        child: Center(
                            child: Text(
                          'Create Account',
                          style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700),
                        )),
                      ),
                      SizedBox(
                        height: 0.05.sh,
                      ),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            },
                            child: Text.rich(TextSpan(
                              text: "Already have an Account ? ",
                              style: GoogleFonts.montserrat(
                                  color: appcolors.lighttextcolor),
                              children: <TextSpan>[
                                TextSpan(
                                    text: 'Login',
                                    style: GoogleFonts.montserrat(
                                        color: appcolors.buttoncolor)),
                                // can add more TextSpans here...
                              ],
                            )),
                          )),
                    ],
                  ),
                )),
          ]),
        ),
      ),
    );
  }
}
