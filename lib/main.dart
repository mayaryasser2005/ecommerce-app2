import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'config/routes_manager/route_generator.dart';
import 'config/routes_manager/routes.dart';
import 'core/utils/observer.dart';
import 'features/auth/domain/entity/test.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  Testoo testoo1 = Testoo("mayar", "01011793298");
  Testoo testoo2 = Testoo("mayar", "01011793298");

  print("code one ${testoo1.hashCode}");
  print("code two ${testoo2.hashCode}");
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: child,
        onGenerateRoute: RouteGenerator.getRoute,
        initialRoute: Routes.signInRoute,
      ),
    );
  }
}
