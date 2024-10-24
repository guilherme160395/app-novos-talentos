import 'package:app_novos_talentos/app/modules/counter/pages/my_home_page.dart';
import 'package:app_novos_talentos/app/modules/counter/pages/my_home_page_2.dart';
import 'package:app_novos_talentos/app/modules/counter/pages/my_home_page_3.dart';
import 'package:app_novos_talentos/app/modules/counter/pages/page2.dart';
import 'package:app_novos_talentos/app/modules/counter/stores/counter_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CounterModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(CounterStore.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const MyHomePage3(title: 'My Home Page 3'));
    r.child('/page-2', child: (context) => const Page2());
  }
}
