import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:shelter/const/AppString.dart';
import '../../const/AppColor.dart';
import '../route/route.dart';

class Splash_Screen extends StatefulWidget {
  const Splash_Screen({super.key});

  @override
  State<Splash_Screen> createState() => _Splash_ScreenState();
}

class _Splash_ScreenState extends State<Splash_Screen> {
final box=GetStorage();

Future chooseScreen()async{
  var userId=box.read('uid');
  if (userId==null) {
    Get.toNamed(onbording);
  }else{
    Get.toNamed(main_homeScreen);
  }
}

@override
  void initState() {
     Future.delayed(Duration(seconds: 2), () => chooseScreen());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppString.applogo,
            ),
            Text(
              AppString.appname,
              style:  TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w800,color: AppColor.black),
            )
          ],
        ),
      ),
    );
  }
}
