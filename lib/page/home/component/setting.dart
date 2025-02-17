import 'dart:io';

import 'package:creator/creator.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:isar/isar.dart';
import 'package:source_parser/creator/setting.dart';
import 'package:source_parser/schema/isar.dart';
import 'package:source_parser/schema/setting.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final surfaceVariant = colorScheme.surfaceVariant;
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Card(
          color: surfaceVariant,
          elevation: 0,
          child: const Column(
            children: [
              SettingTile(
                icon: Icons.view_agenda_outlined,
                route: '/book-source',
                title: '书源管理',
              ),
            ],
          ),
        ),
        // const SizedBox(height: 8),
        // Card(
        //   color: surfaceVariant,
        //   elevation: 0,
        //   child: Column(
        //     children: [
        //       SettingTile(
        //         icon: Icons.color_lens_outlined,
        //         title: '主题种子',
        //         onTap: () => handleTap(context),
        //       ),
        //       const SettingTile(
        //         icon: Icons.format_color_text_outlined,
        //         route: '/setting/reader-theme',
        //         title: '阅读主题',
        //       ),
        //     ],
        //   ),
        // ),
        const SizedBox(height: 8),
        Card(
          color: surfaceVariant,
          elevation: 0,
          child: Column(
            children: [
              const SettingTile(
                icon: Icons.format_color_text_outlined,
                route: '/reader-theme',
                title: '阅读主题',
              ),
              SettingTile(
                icon: Icons.auto_stories_outlined,
                title: '翻页方式',
                onTap: () => updateTurningMode(context),
              ),
              if (Platform.isAndroid)
                Watcher((context, ref, child) {
                  final eInkMode = ref.watch(eInkModeCreator);
                  return ListTile(
                    leading: Icon(
                      Icons.chrome_reader_mode_outlined,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    title: const Text('墨水屏模式'),
                    trailing: Switch(
                      value: eInkMode,
                      onChanged: (value) => updateEInkMode(context, value),
                    ),
                  );
                }),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Card(
          color: surfaceVariant,
          elevation: 0,
          child: const Column(
            children: [
              SettingTile(
                icon: Icons.file_download_outlined,
                route: '/setting/cache',
                title: '缓存',
              ),
              SettingTile(
                icon: Icons.settings_outlined,
                route: '/setting/advanced',
                title: '设置',
              ),
              SettingTile(
                icon: Icons.info_outline_rounded,
                route: '/setting/about',
                title: '关于元夕',
              ),
              // EmitterWatcher<Setting>(
              //   builder: (context, setting) => setting.debugMode
              //       ? const SettingTile(
              //           icon: Icons.developer_mode_outlined,
              //           route: '/setting/developer',
              //           title: '开发者选项',
              //         )
              //       : const SizedBox(),
              //   emitter: settingEmitter,
              // )
            ],
          ),
        ),
      ],
    );
  }

  void updateEInkMode(BuildContext context, bool value) async {
    context.ref.set(eInkModeCreator, value);
    final builder = isar.settings.where();
    var setting = await builder.findFirst();
    if (setting != null) {
      setting.eInkMode = value;
      await isar.writeTxn(() async {
        await isar.settings.put(setting);
      });
    }
  }

  void updateTurningMode(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Watcher((context, ref, child) {
          final turningMode = ref.watch(turningModeCreator);
          const checked = Icon(Icons.check);
          return ListView(
            children: [
              ListTile(
                title: const Text('滑动翻页'),
                trailing: turningMode & 1 != 0 ? checked : null,
                onTap: () => confirmUpdateTurningMode(context, 1),
              ),
              ListTile(
                title: const Text('点击翻页'),
                trailing: turningMode & 2 != 0 ? checked : null,
                onTap: () => confirmUpdateTurningMode(context, 2),
              ),
            ],
          );
        });
      },
    );
  }

  void confirmUpdateTurningMode(BuildContext context, int value) async {
    final ref = context.ref;
    var turningMode = ref.read(turningModeCreator);
    if (turningMode & value != 0) {
      turningMode = turningMode - value;
    } else {
      turningMode = turningMode + value;
    }
    ref.set(turningModeCreator, turningMode);
    final builder = isar.settings.where();
    var setting = await builder.findFirst();
    if (setting != null) {
      setting.turningMode = turningMode;
      await isar.writeTxn(() async {
        await isar.settings.put(setting);
      });
    }
  }

  // void handleTap(BuildContext context) {
  //   showModalBottomSheet(
  //     context: context,
  //     clipBehavior: Clip.hardEdge,
  //     builder: (context) {
  //       return Watcher((context, ref, child) {
  //         final setting = ref.watch(setting)
  //         return ColorPicker(
  //         pickerColor: Color(setting.colorSeed),
  //         labelTypes: const [],
  //         enableAlpha: false,
  //         colorPickerWidth: MediaQuery.of(context).size.width,
  //         onColorChanged: (value) => handleColorChange(context, value),
  //       );
  //       };
  //     },
  //   );
  // }

  // void handleColorChange(BuildContext context, Color color) async {
  //   final ref = context.ref;
  //   var setting = await ref.read(settingEmitter);
  //   setting.colorSeed = color.value;
  //   ref.emit(settingEmitter, setting.clone);
  // await isar.writeTxn(() async {
  //   isar.settings.put(setting);
  // });
  // }
}

class SettingTile extends StatelessWidget {
  const SettingTile({
    Key? key,
    this.icon,
    this.route,
    required this.title,
    this.onTap,
  }) : super(key: key);

  final IconData? icon;
  final String? route;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    var leading = icon != null
        ? Icon(icon, color: Theme.of(context).colorScheme.primary)
        : null;

    return ListTile(
      leading: leading,
      title: Text(title),
      trailing: Icon(
        Icons.arrow_forward_ios,
        color: Theme.of(context).colorScheme.onSurfaceVariant,
        size: 16,
      ),
      onTap: () => handleTap(context),
    );
  }

  void handleTap(BuildContext context) {
    if (route != null) {
      context.push(route!);
    } else {
      onTap?.call();
    }
  }
}
