import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'splash_store.g.dart';

@Injectable()
class SplashStore = SplashStoreBase with _$SplashStore;

abstract class SplashStoreBase with Store {
  @action
  Future<void> initialSplash() async {
    Future.delayed(const Duration(seconds: 3)).then((_) async {
      SystemChrome.setEnabledSystemUIMode(
        SystemUiMode.manual,
        overlays: SystemUiOverlay.values,
      );
      Modular.to.pushReplacementNamed('/home');
    });
  }
}
