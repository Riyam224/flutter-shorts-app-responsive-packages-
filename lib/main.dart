import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

// todo screenutil package
// class MyRespo extends StatelessWidget {
//   const MyRespo({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ScreenUtilInit(
//         designSize: const Size(360, 690),
//         builder: (context, child) {
//           return const MaterialApp(
//               debugShowCheckedModeBanner: false, home: HomeApp());
//         });
//   }
// }
// // todo

// class HomeApp extends StatelessWidget {
//   const HomeApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Center(
//         child: Container(
//             width: 200.w,
//             height: 100.h,
//             color: Colors.blue,
//             child: Center(
//                 child: Text(
//               'screenutil ',
//               style: TextStyle(fontSize: 20.sp, color: Colors.white),
//             ))),
//       ),
//     );
//   }
// }

// todo responsive builder package

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive App with ResponsiveBuilder'),
      ),
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return const Text('Desktop Layout');
          } else if (sizingInformation.deviceScreenType ==
              DeviceScreenType.tablet) {
            return const Text('Tablet Layout');
          } else {
            return const Text('Mobile Layout');
          }
        },
      ),
    );
  }
}
