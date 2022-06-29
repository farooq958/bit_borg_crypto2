 import 'package:bit_borg_crypto/controllers/utils/app_colors.dart';
import 'package:bit_borg_crypto/view/walk_through_pages/walkthroughpages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
 import 'package:google_fonts/google_fonts.dart';
class  splashscreen extends StatefulWidget {
  const  splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  bool lefttoright=false;
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      setState(() {
        lefttoright = true;

      });
      Future.delayed(Duration(seconds: 2),(){
setState(() {
  Navigator.push(context, MaterialPageRoute(builder: (context) => walkthroughpages() ));
});
       // Navigator.push(context, MaterialPageRoute(builder: (context) => walkthroughpages() ));
      });

    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    debugPrint(1.sw.toString());
    return Scaffold(
      body: Container(
        width: 1.sw,
        height: 1.sh,
        color: appcolors.primarycolor,
        child: Stack(
          children: [
           AnimatedPositioned(duration: const Duration(milliseconds: 350),
           bottom: 1.0.sw,
           right:lefttoright?210.sp:390.sp,  //190
           child: Image.asset('assets/images/splashimage1.png',height: 60.66.sp ,width: 79.9.sp,)),

            AnimatedPositioned(duration: const Duration(milliseconds: 350),
                bottom: 1.0.sw,

                left:lefttoright?170.sp:390.sp,  //190
                child: Column(
                  children: [
                     Expanded(flex: 0, child: Image.asset('assets/images/Splashimage2.png',width: 114.sp,height: 29.18.sp,)),
                   SizedBox(height: 5.sp,),
                    Expanded(flex:0 ,child: Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Image.asset('assets/images/Path 3.png',height: 14.11.sp, width: 145.1.sp,),
                    )),
                   //const Text('check the signal',styl(color: Colors.white,fontSize: 20,),)
                  ],
                )),

            //Text('Check',style: TextStyle(color: Colors.yellow,fontSize: 50.sp),)


          ],

        ),

      ),
    );
  }
}
