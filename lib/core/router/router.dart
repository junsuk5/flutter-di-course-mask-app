import 'package:go_router/go_router.dart';
import 'package:mask_info_clean_arch/di/di_setup.dart';
import 'package:mask_info_clean_arch/presentation/main_screen.dart';
import 'package:mask_info_clean_arch/presentation/main_view_model.dart';
import 'package:provider/provider.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => ChangeNotifierProvider(
        create: (_) => getIt.get<MainViewModel>(),
        child: const MainScreen(),
      ),
    ),
  ],
);
