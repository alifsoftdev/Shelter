import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../const/AppColor.dart';

class VioletButton extends StatelessWidget {
  String title;
  final Function onAction;
  VioletButton(this.title,this.onAction);
  RxBool _value = false.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => InkWell(
        onTap: () {
          _value.value = true;
          onAction();
        },
        child: Container(
          height: 45.h,
          decoration: BoxDecoration(
              color: Get.isDarkMode == false ? AppColor.blue : Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(5.r))),
          child: _value == false
              ? Center(
                  child: Text(
                    title,
                    style:  TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w300),
                  ),
                )
              : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text(
                        'Please wait',
                        style:TextStyle(fontSize: 20.sp,fontWeight: FontWeight.w300,),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Transform.scale(scale: 0.5.r,child: CircularProgressIndicator(
                      
                     
                    ))
                  ],
                ),
        ),
      ),
    );
  }
}
