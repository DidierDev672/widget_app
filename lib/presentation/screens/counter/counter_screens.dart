import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widget_app/presentation/providers/counter_provider.dart';
import 'package:widget_app/presentation/providers/theme_provider.dart';

class CounterScreen extends ConsumerWidget {
  static const String name = 'counter_screen';
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(isDarkModeProvider);
    final int clickCounter = ref.watch(counterProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Counter Screen',
        ),
        actions: [
          IconButton(
            onPressed: () {
              //ref.read(isDarkModeProvider.notifier).state = !isDarkMode;
              ref
                  .read(isDarkModeProvider.notifier)
                  .update((isDarkMode) => !isDarkMode);
            },
            icon: isDarkMode
                ? const Icon(
                    Icons.dark_mode_rounded,
                  )
                : const Icon(
                    Icons.light_mode_rounded,
                  ),
          )
        ],
      ),
      body: Center(
        child: Text(
          'Valor: $clickCounter',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
