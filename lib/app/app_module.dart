import 'package:app_novos_talentos/app/modules/counter/counter_module.dart';
import 'package:app_novos_talentos/app/modules/counter/pages/my_home_page.dart';
import 'package:app_novos_talentos/app/modules/login/login_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.module('/', module: CounterModule());
    r.module('/login', module: LoginModule());
  }
}
