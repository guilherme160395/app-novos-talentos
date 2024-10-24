import 'package:app_novos_talentos/app/modules/counter/stores/counter_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'page2.dart';

class MyHomePage2 extends StatefulWidget {
  const MyHomePage2({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage2> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage2> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final counter = context.watch<CounterStore>();

    List<Widget> children = List.generate(
      20,
      (index) => Container(
        alignment: Alignment.center,
        width: 50,
        height: 50,
        color: Colors.amber,
        child: Text(index.toString()),
      ),
    );

    Widget body = GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 50,
      crossAxisSpacing: 25,
      children: children,
    );

    if (counter.counter.isOdd) {
      body = SizedBox.expand(
        child: SingleChildScrollView(
          child: Column(
            children: children,
          ),
        ),
      );
    }

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: body,
      floatingActionButton: FloatingActionButton(
        onPressed: counter.incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
