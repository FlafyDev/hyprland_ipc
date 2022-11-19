import 'dart:math';

abstract class WindowRule {
  String convert();
}

abstract class DynamicWindowRule implements WindowRule {}

class FloatWindowRule implements WindowRule {
  @override
  String convert() => "float";
}

class TileWindowRule implements WindowRule {
  @override
  String convert() => "tile";
}

class FullscreenWindowRule implements WindowRule {
  @override
  String convert() => "fullscreen";
}

class MoveWindowRule implements WindowRule {
  MoveWindowRule(this.point);
  final Point point;
  @override
  String convert() => "move ${point.x} ${point.y}";
}

class SizeWindowRule implements WindowRule {
  SizeWindowRule(this.size);
  final Point size;
  @override
  String convert() => "size ${size.x} ${size.y}";
}

class MinimumSizeWindowRule implements WindowRule {
  MinimumSizeWindowRule(this.size);
  final Point size;
  @override
  String convert() => "minsize ${size.x} ${size.y}";
}

class MaximumSizeWindowRule implements WindowRule {
  MaximumSizeWindowRule(this.size);
  final Point size;
  @override
  String convert() => "maxsize ${size.x} ${size.y}";
}

class CenterWindowRule implements WindowRule {
  @override
  String convert() => "center";
}

class PseudoWindowRule implements WindowRule {
  @override
  String convert() => "pseudo";
}

class MonitorWindowRule implements WindowRule {
  MonitorWindowRule(this.monitorId);
  final int monitorId;
  @override
  String convert() => "monitor $monitorId";
}

class WorkspaceWindowRule implements WindowRule {
  WorkspaceWindowRule(this.workspace);
  final String workspace;
  @override
  String convert() => "workspace $workspace";
}

class OpacityMultiplierWindowRule implements DynamicWindowRule {
  OpacityMultiplierWindowRule(double opacity)
      : active = opacity,
        inactive = opacity;

  OpacityMultiplierWindowRule.split({
    required this.active,
    required this.inactive,
  });

  final double active;
  final double inactive;

  @override
  String convert() => "opacity $active $inactive";
}

class OpaqueWindowRule implements DynamicWindowRule {
  @override
  String convert() => "opaque";
}

class AnimationWindowRule implements DynamicWindowRule {
  AnimationWindowRule(
    this.style, {
    required this.opt,
  });
  final String style;
  final String opt;

  @override
  String convert() => "animation $style $opt";
}

class RoundingWindowRule implements DynamicWindowRule {
  RoundingWindowRule(this.pixels);
  final int pixels;

  @override
  String convert() => "rounding $pixels";
}

class NoBlurWindowRule implements DynamicWindowRule {
  NoBlurWindowRule();

  @override
  String convert() => "noblur";
}

class NoFocusWindowRule implements WindowRule {
  NoFocusWindowRule();

  @override
  String convert() => "nofocus";
}

class NoBorderWindowRule implements DynamicWindowRule {
  NoBorderWindowRule();

  @override
  String convert() => "noborder";
}

class NoShadowWindowRule implements DynamicWindowRule {
  NoShadowWindowRule();

  @override
  String convert() => "noshadow";
}

class ForceInputWindowRule implements WindowRule {
  ForceInputWindowRule();

  @override
  String convert() => "forceinput";
}

class WindowDanceWindowRule implements WindowRule {
  WindowDanceWindowRule();

  @override
  String convert() => "windowdance";
}

class PinWindowRule implements WindowRule {
  PinWindowRule();

  @override
  String convert() => "pin";
}

class NoAnimationWindowRule implements DynamicWindowRule {
  NoAnimationWindowRule();

  @override
  String convert() => "noanim";
}

// RGBA
class BorderColorWindowRule implements DynamicWindowRule {
  BorderColorWindowRule(int color)
      : active = color,
        inactive = color;

  BorderColorWindowRule.split({
    required this.active,
    required this.inactive,
  });

  final int active;
  final int inactive;

  @override
  String convert() =>
      "bordercolor rgba(${active.toRadixString(16)}) rgba(${inactive.toRadixString(16)})";
}

enum IdleInhibitMode {
  none,
  always,
  focus,
  fullscreen,
}

class IdleInhibitWindowRule implements WindowRule {
  IdleInhibitWindowRule(this.mode);

  final IdleInhibitMode mode;

  @override
  String convert() => "idleinhibit ${mode.name}";
}

// TODO: Figure what this does
class UnsetWindowRule implements WindowRule {
  UnsetWindowRule(this.param);

  final String param;

  @override
  String convert() => "unset $param";
}
