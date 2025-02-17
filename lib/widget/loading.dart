import 'package:creator/creator.dart';
import 'package:flutter/material.dart';
import 'package:source_parser/creator/setting.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Watcher((context, ref, child) {
      final eInkMode = ref.watch(eInkModeCreator);
      if (eInkMode) {
        return const Text('正在加载');
      } else {
        return const CircularProgressIndicator();
      }
    });
  }
}
