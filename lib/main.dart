import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'UI/route/route.dart';
import 'UI/theme/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await GetStorage.init();
  runApp(App());
}

class App extends StatelessWidget {
  final Future<FirebaseApp> _initializetion = Firebase.initializeApp(
    name: "Shelter Travels",
    options: FirebaseOptions(
        apiKey: "AIzaSyBfmtYcJ7EXk2nc_pSSBIGWsK019t9disI", 
        appId: "1:339731305746:android:2d758fff54685600530fcb",
        messagingSenderId: "339731305746",
        projectId: "shelter-travels-c245c"),
  );
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initializetion,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Center(
              child: CircularProgressIndicator(),
            );
            // return MyApp();

          }
          if (snapshot.connectionState == ConnectionState.done) {
            return MyApp();
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: Get.isDarkMode == false ?AppTheme().lightTheme(context):AppTheme().darkTheme(context),
            initialRoute:splash,
            getPages: getpages,
          );
        }); 
  }
}
