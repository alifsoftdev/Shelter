import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shelter/const/AppColor.dart';

Widget navHomeCategories(String categoryName, onClick) {
  return Padding(
    padding:  EdgeInsets.only(left: 25.w,right: 25.w),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
            categoryName,
            style: TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
          ),
        InkWell(
          onTap: onClick,
          child: Text(
            "See All",
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600,color:AppColor.green),
          ),
        ),
      ],
    ),
  );
}