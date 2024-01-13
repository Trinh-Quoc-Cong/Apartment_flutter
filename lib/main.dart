import 'package:chungcu/project/routes/app_route_config.dart';
import 'package:flutter/material.dart';

void main()  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser:NyAppRouter.returnRouter(true).routeInformationParser ,
      routerDelegate: NyAppRouter.returnRouter(true).routerDelegate,
      
     
    );
  }
}

