import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/UI/widget/drawerItem.dart';

import '../../../const/AppString.dart';
import '../../route/route.dart';

class DrawerScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
       body: Padding(padding: EdgeInsets.only(top: 50.h,left: 20.w,bottom: 20.h),
       child:  Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shelter',style: TextStyle(fontSize: 32.sp,fontWeight: FontWeight.w500),
    
          ),
          Text('Travel Agency',style: TextStyle(fontSize: 15.sp,fontWeight: FontWeight.w300),),
          SizedBox(height: 20.h,),
          drawerItem(AppString.SupportText, ()=>Get.toNamed(support)),
          drawerItem(AppString.PrivacyText,  ()=>Get.toNamed(privacy)),
          drawerItem(AppString.faqText,  ()=>Get.toNamed(faq)),
          drawerItem(AppString.Rate_UsText,  ()=>Get.toNamed(rate_Us)),
          drawerItem(AppString.How_to_useText,  ()=>Get.toNamed(howToUse)),
          Expanded(child: SizedBox()),
          InkWell(
            onTap: ()=>Get.toNamed(settings),
            child: Text('Settings',style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w500),),
          )
        ],
       ),
       ),
      ),
    );
  }
}