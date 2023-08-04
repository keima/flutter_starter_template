import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '/routes/routes.dart';
import '/routes/about_branch.dart';
import '/hello_provider.dart';
import '/i18n/translations.g.dart';
import '/dart_define.gen.dart';
import '/gen/assets.gen.dart';

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
            Image.asset(
              Assets.images.dash.path,
              width: 100,
              height: 100,
            ),
            TextButton(
              child: const Text("go to /about"),
              onPressed: () {
                const AboutPageRouteData().go(context);
              },
            ),
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
