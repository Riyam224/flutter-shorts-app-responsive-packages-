import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyRespo());
}

class MyRespo extends StatelessWidget {
  const MyRespo({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        builder: (context, child) {
          return const MaterialApp(
              debugShowCheckedModeBanner: false, home: HomeApp());
        });
  }
}
// todo

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
            width: 200.w,
            height: 100.h,
            color: Colors.blue,
            child: Center(
                child: Text(
              'screenutil ',
              style: TextStyle(fontSize: 20.sp, color: Colors.white),
            ))),
      ),
    );
  }
}
