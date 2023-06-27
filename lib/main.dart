import 'package:flutter/material.dart';
import 'package:mask_info_clean_arch/data/mock_datas.dart';
import 'package:mask_info_clean_arch/di/di_setup.dart';
import 'package:mask_info_clean_arch/domain/usecase/get_near_by_stores_use_case.dart';
import 'package:mask_info_clean_arch/presentation/main_screen.dart';
import 'package:mask_info_clean_arch/presentation/main_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChangeNotifierProvider(
        create: (BuildContext context) => getIt.get<MainViewModel>(),
        child: const MainScreen(),
      ),
    );
  }
}
