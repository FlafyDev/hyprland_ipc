import 'package:hyprland_ipc/hyprland_ipc.dart';
import 'package:hyprland_ipc/src/socket/models.dart';

abstract class LayerRule {
  const LayerRule();
  // Using _convert so it errors in case it's not implemented.
  String _convert();
  @override
  String toString() => _convert();
}

abstract class WindowRule {
  const WindowRule();
  // Using _convert so it errors in case it's not implemented.
  String _convert();
  @override
  String toString() => _convert();
}

abstract class StaticWindowRule extends WindowRule {
  const StaticWindowRule();
}

abstract class DynamicWindowRule extends WindowRule {
  const DynamicWindowRule();
}

class FloatWindowRule extends StaticWindowRule {
  const FloatWindowRule();
  @override
  String _convert() => "float";
}

class TileWindowRule extends StaticWindowRule {
  const TileWindowRule();
  @override
  String _convert() => "tile";
}

class FullscreenWindowRule extends StaticWindowRule {
  const FullscreenWindowRule();
  @override
  String _convert() => "fullscreen";
}

class FakeFullscreenWindowRule extends StaticWindowRule {
  const FakeFullscreenWindowRule();
  @override
  String _convert() => "fakefullscreen";
}

class MoveWindowRule extends StaticWindowRule {
  const MoveWindowRule({
    required int x,
    required int y,
  })  : x = "$x",
        y = "$y";

  const MoveWindowRule.complex({
    required this.x,
    required this.y,
  });

  final String x;
  final String y;

  @override
  String _convert() => "move $x $y";
}

class SizeWindowRule extends StaticWindowRule {
  const SizeWindowRule({
    required ResizeSet this.resize,
  });

  const SizeWindowRule.factor({
    required ResizeFactor this.resize,
  });

  final Resize resize;

  @override
  String _convert() => "size ${resize.toString().replaceAll('exact', '')}";
}

class CenterWindowRule extends StaticWindowRule {
  const CenterWindowRule({
    this.respectReservedArea = false,
  });
  final bool respectReservedArea;
  @override
  String _convert() => "center ${respectReservedArea ? '1' : ''}".trim();
}

class PseudoWindowRule extends StaticWindowRule {
  const PseudoWindowRule();
  @override
  String _convert() => "pseudo";
}

class MonitorWindowRule extends StaticWindowRule {
  const MonitorWindowRule({
    required this.monitor,
  });

  final MonitorRef monitor;

  @override
  String _convert() {
    if (!(monitor is MonitorRefID || monitor is MonitorRefName)) throw Exception("Invalid monitor reference");
    return "monitor $monitor";
  }
}

class WorkspaceWindowRule extends StaticWindowRule {
  const WorkspaceWindowRule({
    this.workspace,
    this.switchToWorkspace = true,
  });

  final WorkspaceRef? workspace;
  final bool switchToWorkspace;

  @override
  String _convert() => "workspace ${workspace ?? 'unset'} ${switchToWorkspace ? '' : 'silent'}".trim();
}

class NoFocusWindowRule extends StaticWindowRule {
  const NoFocusWindowRule();

  @override
  String _convert() => "nofocus";
}

class NoInitialFocusWindowRule extends StaticWindowRule {
  const NoInitialFocusWindowRule();

  @override
  String _convert() => "noinitialfocus";
}

class ForceInputWindowRule extends StaticWindowRule {
  const ForceInputWindowRule();

  @override
  String _convert() => "forceinput";
}

class WindowDanceWindowRule extends StaticWindowRule {
  const WindowDanceWindowRule();

  @override
  String _convert() => "windowdance";
}

class PinWindowRule extends StaticWindowRule {
  const PinWindowRule();

  @override
  String _convert() => "pin";
}

class UnsetWindowRule extends StaticWindowRule {
  const UnsetWindowRule({
    required this.param,
  });

  final String param;

  @override
  String _convert() => "unset $param";
}

class NoMaxSizeWindowRule extends StaticWindowRule {
  const NoMaxSizeWindowRule();

  @override
  String _convert() => "nomaxsize";
}

class StayFocusedWindowRule extends StaticWindowRule {
  const StayFocusedWindowRule();

  @override
  String _convert() => "stayfocused";
}

class GroupWindowRule extends StaticWindowRule {
  const GroupWindowRule({
    required this.options,
  });

  final List<GroupOption> options;

  @override
  String _convert() => "group ${options.join(' ')}".trim();
}

class SuppressEventWindowRule extends StaticWindowRule {
  const SuppressEventWindowRule({
    required this.events,
  });

  final List<SuppressEventEvents> events;

  @override
  String _convert() => "suppressevent ${events.join(' ')}";
}

class OpacityMultiplierWindowRule extends DynamicWindowRule {
  const OpacityMultiplierWindowRule({required double opacity})
      : active = opacity,
        inactive = opacity;

  const OpacityMultiplierWindowRule.split({
    required this.active,
    required this.inactive,
  });

  final double active;
  final double inactive;

  @override
  String _convert() => "opacity $active $inactive";
}

class OpaqueWindowRule extends DynamicWindowRule {
  const OpaqueWindowRule();
  @override
  String _convert() => "opaque";
}

class ForceRGBXWindowRule extends DynamicWindowRule {
  const ForceRGBXWindowRule();
  @override
  String _convert() => "forcergbx";
}

class AnimationWindowRule extends DynamicWindowRule {
  const AnimationWindowRule({
    required this.style,
    this.opt = "",
  });

  final String style;
  final String opt;

  @override
  String _convert() => "animation $style $opt".trim();
}

class RoundingWindowRule extends DynamicWindowRule {
  const RoundingWindowRule({required this.pixels});
  final int pixels;

  @override
  String _convert() => "rounding $pixels";
}

class MinSizeWindowRule extends DynamicWindowRule {
  const MinSizeWindowRule({
    required this.width,
    required this.height,
  });

  final int width;
  final int height;

  @override
  String _convert() => "minsize $width $height";
}

class MaxSizeWindowRule extends DynamicWindowRule {
  const MaxSizeWindowRule({
    required this.width,
    required this.height,
  });

  final int width;
  final int height;

  @override
  String _convert() => "maxsize $width $height";
}

class NoBlurWindowRule extends DynamicWindowRule {
  const NoBlurWindowRule();

  @override
  String _convert() => "noblur";
}

class NoBorderWindowRule extends DynamicWindowRule {
  const NoBorderWindowRule();

  @override
  String _convert() => "noborder";
}

class BorderSizeWindowRule extends DynamicWindowRule {
  const BorderSizeWindowRule({required this.pixels});

  final int pixels;

  @override
  String _convert() => "bordersize $pixels";
}

class NoDimWindowRule extends DynamicWindowRule {
  const NoDimWindowRule();

  @override
  String _convert() => "nodim";
}

class NoShadowWindowRule extends DynamicWindowRule {
  const NoShadowWindowRule();

  @override
  String _convert() => "noshadow";
}

class NoAnimationWindowRule extends DynamicWindowRule {
  const NoAnimationWindowRule();

  @override
  String _convert() => "noanim";
}

class KeepAspectRatioWindowRule extends DynamicWindowRule {
  const KeepAspectRatioWindowRule();

  @override
  String _convert() => "keepaspectratio";
}

class FocusOnActivateWindowRule extends DynamicWindowRule {
  const FocusOnActivateWindowRule();

  @override
  String _convert() => "focusonactivate";
}

class BorderColorWindowRule extends DynamicWindowRule {
  const BorderColorWindowRule(int color)
      : active = color,
        inactive = color;

  const BorderColorWindowRule.split({
    required this.active,
    required this.inactive,
  });

  static gradient({
    required GradientColor gradient,
  }) =>
      BorderGradientColorWindowRule(gradient: gradient);

  static splitGradient({
    required GradientColor active,
    required GradientColor inactive,
  }) =>
      BorderGradientColorWindowRule.split(active: active, inactive: inactive);

  final int active;
  final int inactive;

  @override
  String _convert() => "bordercolor rgba(${active.toRadixString(16)}) rgba(${inactive.toRadixString(16)})";
}

class BorderGradientColorWindowRule extends DynamicWindowRule {
  const BorderGradientColorWindowRule({required GradientColor gradient})
      : active = gradient,
        inactive = gradient;

  const BorderGradientColorWindowRule.split({
    required this.active,
    required this.inactive,
  });

  final GradientColor active;
  final GradientColor inactive;

  @override
  String _convert() => "bordercolor $active $inactive";
}

class IdleInhibitWindowRule extends WindowRule {
  const IdleInhibitWindowRule({required this.mode});

  final IdleInhibitMode mode;

  @override
  String _convert() => "idleinhibit ${mode.name}";
}

class DimAroundWindowRule extends DynamicWindowRule {
  const DimAroundWindowRule();

  @override
  String _convert() => "dimaround";
}

class XRayWindowRule extends DynamicWindowRule {
  const XRayWindowRule({
    required this.mode,
  });

  final XRayRuleMode mode;

  @override
  String _convert() => "xray ${mode.value}";
}

class ImmediateWindowRule extends DynamicWindowRule {
  const ImmediateWindowRule();

  @override
  String _convert() => "immediate";
}

class NearestNeighborWindowRule extends DynamicWindowRule {
  const NearestNeighborWindowRule();

  @override
  String _convert() => "nearestneighbor";
}

class UnsetLayerRule extends LayerRule {
  const UnsetLayerRule();

  @override
  String _convert() => "unset";
}

class NoAnimationLayerRule extends LayerRule {
  const NoAnimationLayerRule();

  @override
  String _convert() => "noanim";
}

class BlurLayerRule extends LayerRule {
  const BlurLayerRule();

  @override
  String _convert() => "blur";
}

class BlurPopupsLayerRule extends LayerRule {
  const BlurPopupsLayerRule();

  @override
  String _convert() => "blurpopups";
}

class IgnoreAlphaLayerRule extends LayerRule {
  const IgnoreAlphaLayerRule({required this.alpha});

  final double alpha;

  @override
  String _convert() => "ignorealpha $alpha";
}

class IgnoreZeroLayerRule extends LayerRule {
  const IgnoreZeroLayerRule();

  @override
  String _convert() => "ignorezero";
}

class DimAroundLayerRule extends LayerRule {
  const DimAroundLayerRule();

  @override
  String _convert() => "dimaround";
}

class XRayLayerRule extends LayerRule {
  const XRayLayerRule({
    required this.mode,
  });

  final XRayRuleMode mode;

  @override
  String _convert() => "xray ${mode.value}";
}

class AnimationLayerRule extends LayerRule {
  const AnimationLayerRule({
    required this.style,
  });

  final String style;

  @override
  String _convert() => "animation $style";
}
