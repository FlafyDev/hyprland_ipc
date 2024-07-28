import 'dart:convert';
import 'dart:math';

import 'package:color/color.dart';
import 'package:hyprland_ipc/src/socket/commands/commands.dart';
import 'package:hyprland_ipc/src/socket/models.dart';
import 'package:hyprland_ipc/src/socket/window_rules.dart';

class KeywordCommand extends ActionCommand {
  const KeywordCommand({required this.key, required this.value});

  final String key;
  final String value;

  @override
  String getCommand() {
    return "keyword $key $value";
  }
}

class ReloadCommand extends ActionCommand {
  const ReloadCommand({
    this.configOnly = false,
  });

  final bool configOnly;

  @override
  String getCommand() {
    return "reload${configOnly ? " config-only" : ""}";
  }
}

class KillModeCommand extends ActionCommand {
  const KillModeCommand();

  @override
  String getCommand() {
    return "kill";
  }
}

class SetCursorCommand extends ActionCommand {
  const SetCursorCommand({
    required this.hyprcursorTheme,
    required this.size,
  });

  final String hyprcursorTheme;
  final int size;

  @override
  String getCommand() {
    return "setcursor $hyprcursorTheme $size";
  }
}

class CreateOutputCommand extends ActionCommand {
  const CreateOutputCommand({
    required this.backend,
  });

  final OutputBackend backend;

  @override
  String getCommand() {
    return "output create ${backend.name}";
  }
}

class RemoveOutputCommand extends ActionCommand {
  const RemoveOutputCommand({
    required this.name,
  });

  final String name;

  @override
  String getCommand() {
    return "output remove $name";
  }
}

class SwitchXKBLayoutCommand extends ActionCommand {
  const SwitchXKBLayoutCommand.cycle({
    required this.device,
    required this.reverse,
  }) : id = null;

  const SwitchXKBLayoutCommand.specific({
    required this.device,
    required this.id,
  }) : reverse = null;

  final String device;
  final bool? reverse;
  final int? id;

  @override
  String getCommand() {
    if (reverse != null) {
      return "xkb_switch $device ${reverse! ? "prev" : "next"}";
    } else {
      return "xkb_switch $device $id";
    }
  }
}

class SetErrorCommand extends ActionCommand {
  const SetErrorCommand({
    required this.color,
    required this.content,
  });

  final int color;
  final String content;

  @override
  String getCommand() {
    return "seterror rgba(${color.toRadixString(16)}) $content";
  }
}

class DisableErrorCommand extends ActionCommand {
  const DisableErrorCommand();

  @override
  String getCommand() {
    return "seterror disable";
  }
}

class SetPropCommand extends ActionCommand {
  const SetPropCommand();

  @override
  String getCommand() {
    // TODO: implement setProp
    throw UnimplementedError();
  }
}

class NotifyCommand extends ActionCommand {
  const NotifyCommand({
    required this.icon,
    required this.content,
    required this.color,
    required this.duration,
  });

  final NotifyIcon icon;
  final Duration duration;
  final int color;
  final String content;

  @override
  String getCommand() {
    return "notify ${icon.index} ${duration.inMilliseconds} rgba(${color.toRadixString(16)}) $content";
  }
}

class DismissNotifyCommand extends ActionCommand {
  const DismissNotifyCommand({
    this.onlyLast,
  });

  final int? onlyLast;

  @override
  String getCommand() {
    return "dismissnotify ${onlyLast ?? ''}".trim();
  }
}

/// TODO: Update to latest version
class AddWindowRulesCommand extends ActionCommand {
  const AddWindowRulesCommand({
    this.titleRegex,
    this.classRegex,
    this.xwayland,
    this.floating,
    this.fullscreen,
    this.pinned,
    required this.windowRules,
  });

  final String? titleRegex;
  final String? classRegex;
  final bool? xwayland;
  final bool? floating;
  final bool? fullscreen;
  final bool? pinned;
  final List<WindowRule> windowRules;

  String _boolToNum(bool b) => b ? "1" : "0";

  @override
  String getCommand() {
    final fields = [
      if (titleRegex != null) "title:${titleRegex!}",
      if (classRegex != null) "class:${classRegex!}",
      if (xwayland != null) "xwayland ${_boolToNum(xwayland!)}",
      if (floating != null) "floating ${_boolToNum(floating!)}",
      if (fullscreen != null) "fullscreen ${_boolToNum(fullscreen!)}",
      if (pinned != null) "pinned ${_boolToNum(pinned!)}",
    ].join(",");
    assert(fields.isNotEmpty);
    return "keyword windowrulev2 ${windowRules.join(",")},$fields";
  }
}
