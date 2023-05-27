import 'package:flutter_modular/flutter_modular.dart';

import 'app_routes.dart';
import 'modules/home/home_module.dart';
import 'modules/splash/splash_module.dart';
import 'modules/splash/splash_store.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SplashStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: SplashModule()),
    ModuleRoute(AppRoutes.home, module: HomeModule()),
  ];
}
