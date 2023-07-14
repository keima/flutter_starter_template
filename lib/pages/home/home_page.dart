import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_starter_template/dart_define.gen.dart';
import 'package:flutter_starter_template/gen/assets.gen.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/hello_provider.dart';
import '/i18n/translations.g.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final t = Translations.of(context);

    final counter = useState(0);

    final String value = ref.watch(helloProvider);
    final helloAsync = ref.watch(helloAsyncProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(t.general.appName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("${DartDefine.flavor} ${DartDefine.key1} ${DartDefine.key2}"),
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '${counter.value}',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              value,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Image.asset(Assets.images.dash.path),
            helloAsync.maybeWhen(
              data: (data) => Text(
                data,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              orElse: () => const CircularProgressIndicator(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counter.value++,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
