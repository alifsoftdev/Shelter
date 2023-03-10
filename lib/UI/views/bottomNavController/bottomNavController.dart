import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shelter/UI/views/bottomNavController/pages/nav_Add.dart';
import 'package:shelter/UI/views/bottomNavController/pages/nav_Favorite.dart';
import 'package:shelter/UI/views/bottomNavController/pages/nav_Home.dart';

class BottomNavController extends StatelessWidget {
  RxInt _currentIndex = 0.obs;
  RxBool _drawer = false.obs;
  final _pages = [
    HomePage(),
    NavAddPage(),
    FavouritePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(milliseconds: 400),
        top: _drawer.value == false ? 0 : 100.h,
        bottom: _drawer.value == false ? 0 : 100.h,
        left: _drawer.value == false ? 0 : 200.w,
        right: _drawer.value == false ? 0 : -100.w,
        child: Container(
          decoration: BoxDecoration(),
          child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              leading: _drawer.value == false
                  ? IconButton(
                      onPressed: () {
                        _drawer.value = true;
                      },
                      icon: Icon(
                        Icons.menu,
                        
                      ),
                    )
                  : IconButton(
                      onPressed: () {
                        _drawer.value = false;
                      },
                      icon: Icon(
                        Icons.close,
                        
                      ),
                      iconSize: 20.sp,
                    ),
              title: Text(
                "Shelter",
                style: TextStyle( fontSize: 30.sp,color: Get.isDarkMode == false ? Colors.black : Colors.white,),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              onTap: (value) => _currentIndex.value = value,
              currentIndex: _currentIndex.value,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_outlined,
                    size: 30.sp,
                  ),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.add, size: 30.sp), label: "Add"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.favorite_border_outlined, size: 30.sp),
                    label: "Favorite"),
              ],
            ),
            body: _pages[_currentIndex.value],
          ),
        ),
      ),
    );
  }
}
