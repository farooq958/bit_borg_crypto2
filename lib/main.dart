import 'package:bit_borg_crypto/controllers/alertCubit.dart';
import 'package:bit_borg_crypto/controllers/dashboardcontainerCubit.dart';
import 'package:bit_borg_crypto/controllers/dashboardpage_cubit.dart';
import 'package:bit_borg_crypto/controllers/newspage_cubit.dart';
import 'package:bit_borg_crypto/controllers/signal_cubit.dart';
import 'package:bit_borg_crypto/controllers/successcontrollercubit.dart';
import 'package:bit_borg_crypto/view/splash/splashscreen.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'controllers/walk_through_cubit.dart';

void main() => runApp(
  DevicePreview(

    builder: (context) => MyApp(), // Wrap your app
  ),
);


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<WalkThroughCubit>(
                create: (BuildContext context) => WalkThroughCubit(0)),
            BlocProvider<successcontroller>(create:(BuildContext context)=> successcontroller(false)),
            BlocProvider<dashboardpageCubit>(
                create: (BuildContext context) => dashboardpageCubit(0)),
            BlocProvider<dashboardcontainerCubit>(
                create: (BuildContext context) => dashboardcontainerCubit(false)),
            BlocProvider<newspageCubit>(
                create: (BuildContext context) => newspageCubit(0)),
            BlocProvider<alertCubit>(
                create: (BuildContext context) => alertCubit(false)),
            BlocProvider<signalCubit>(
                create: (BuildContext context) => signalCubit(0)),
          ],
          child: const MaterialApp(

            builder: DevicePreview.appBuilder,
            useInheritedMediaQuery: true,
            debugShowCheckedModeBanner: false,
            home: splashscreen(),
          ),

        );
      },

    );
  }
}
