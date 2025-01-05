import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:petstore_sampathk_1001/features/login_screen/view/login_screen.dart';
import 'package:petstore_sampathk_1001/features/signup_screen/view/signup_screen.dart';
import 'package:petstore_sampathk_1001/routes/routes.dart';
import 'package:provider/provider.dart';

void main() {
  loader();
  runApp(const MyApp());
}

void loader() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.circle
    ..loadingStyle = EasyLoadingStyle.dark
    ..maskType = EasyLoadingMaskType.black
    ..indicatorSize = 45.0
    ..radius = 10.0;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
       Provider(create: (context) => LoginScreen()),
       Provider(create: (context) => SignupScreen()),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        routerConfig: AppRouter.router,
           builder: EasyLoading.init(),
      ),
    );
  }
}
