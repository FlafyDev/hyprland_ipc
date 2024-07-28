import 'dart:math';

import 'package:hyprland_ipc/src/socket/commands/commands.dart';
import 'package:hyprland_ipc/src/socket/models.dart';
import 'package:hyprland_ipc/src/socket/window_rules.dart';

/// Executes a shell command.
class ExecCommand extends ActionCommand {
  const ExecCommand({
    required this.command,
    this.rules = const [],
  });

  final String command;
  final List<WindowRule> rules;

  @override
  String getCommand() {
    return "dispatch exec${rules.isNotEmpty ? ' [${rules.join(";")}]' : ''} $command";
  }
}

/// Executes a raw shell command (does not support rules).
class ExecRawCommand extends ActionCommand {
  const ExecRawCommand({
    required this.command,
  });

  final String command;

  @override
  String getCommand() {
    return "dispatch execr $command";
  }
}

/// Passes the key (with mods) to a specified window. Can be used as a workaround to global keybinds not working on Wayland.
class PassToWindowCommand extends ActionCommand {
  const PassToWindowCommand({
    required this.window,
  });

  final WindowRef window;

  @override
  String getCommand() {
    return "dispatch pass $window";
  }
}

/// Closes a specified window.
class CloseWindowCommand extends ActionCommand {
  const CloseWindowCommand({
    this.window,
  });

  final WindowRef? window;

  @override
  String getCommand() {
    if (window == null) {
      return "dispatch killactive";
    }
    return "dispatch closewindow $window";
  }
}

/// Changes the workspace.
class ChangeToWorkspaceCommand extends ActionCommand {
  const ChangeToWorkspaceCommand({
    required this.workspace,
  });

  final WorkspaceRef workspace;

  @override
  String getCommand() {
    return "dispatch workspace $workspace";
  }
}

/// Moves the focused window to a workspace.
class MoveWindowToWorkspaceCommand extends ActionCommand {
  const MoveWindowToWorkspaceCommand({
    required this.workspace,
    this.window,
    this.switchWorkspace = true,
  });

  final WorkspaceRef workspace;
  final WindowRef? window;
  final bool switchWorkspace;

  @override
  String getCommand() {
    final String dispatcher = switchWorkspace ? "movetoworkspace" : "movetoworkspacesilent";
    final String args = workspace.toString() + (window != null ? ",$window" : "");
    return "dispatch $dispatcher $args";
  }
}

/// Toggles a window’s floating state.
class ToggleFloatingCommand extends ActionCommand {
  const ToggleFloatingCommand({
    required this.window,
  });

  final WindowRef? window;

  @override
  String getCommand() {
    return "dispatch togglefloating ${window?.toString() ?? ''}".trim();
  }
}

/// Sets a window’s floating state.
class SetFloatingCommand extends ActionCommand {
  const SetFloatingCommand({
    required this.floating,
    this.window,
  });

  final WindowRef? window;
  final bool floating;

  @override
  String getCommand() {
    return "dispatch ${floating ? "setfloating" : "settiled"}${window != null ? ' ${window!.toString()}' : ''} $floating";
  }
}

/// Toggles the focused window’s fullscreen state.
class ToggleFullscreenActiveWindowCommand extends ActionCommand {
  const ToggleFullscreenActiveWindowCommand({
    required this.mode,
  });

  final FullscreenMode mode;

  @override
  String getCommand() {
    return "dispatch fullscreen ${mode.index}";
  }
}

/// Toggles the focused window’s internal fullscreen state without altering the geometry
class ToggleFakeFullscreenActiveWindowCommand extends ActionCommand {
  const ToggleFakeFullscreenActiveWindowCommand();

  @override
  String getCommand() {
    return "dispatch fakefullscreen";
  }
}

/// Sets all monitors’ DPMS status. Do not use with a keybind directly.
class DpmsCommand extends ActionCommand {
  const DpmsCommand({
    required this.mode,
    this.monitorName,
  });

  final TurnMode mode;
  final MonitorRefName? monitorName;

  @override
  String getCommand() {
    return "dispatch dpms ${mode.name} ${monitorName?.name ?? ""}".trim();
  }
}

/// Toggle pseudo for the active window.
class TogglePseudoActiveWindowCommand extends ActionCommand {
  const TogglePseudoActiveWindowCommand();

  @override
  String getCommand() {
    return "dispatch pseudo";
  }
}

/// Pins a window (i.e. show it on all workspaces) note: floating only.
class PinWindowCommand extends ActionCommand {
  const PinWindowCommand({
    this.window,
  });

  final WindowRef? window;

  @override
  String getCommand() {
    return "dispatch pin ${window?.toString() ?? ''}".trim();
  }
}

/// Moves the focus in a direction.
class MoveFocusCommand extends ActionCommand {
  const MoveFocusCommand({
    required this.direction,
  });

  final Direction direction;

  @override
  String getCommand() {
    return "dispatch movefocus ${direction.name}";
  }
}

/// Move window in a direction.
class MoveActiveWindowInDirectionCommand extends ActionCommand {
  const MoveActiveWindowInDirectionCommand({
    required this.direction,
    this.keepFocus = false,
  });

  final Direction direction;
  final bool keepFocus;

  @override
  String getCommand() {
    return "dispatch movewindow ${direction.name} ${keepFocus ? '' : 'silent'}".trim();
  }
}

/// Move window to a monitor.
class MoveActiveWindowToMonitorCommand extends ActionCommand {
  const MoveActiveWindowToMonitorCommand({
    required this.monitor,
    this.keepFocus = false,
  });

  final MonitorRef monitor;
  final bool keepFocus;

  @override
  String getCommand() {
    return "dispatch movewindow mon:$monitor ${keepFocus ? '' : 'silent'}".trim();
  }
}

/// Swaps the active window with another window in the given direction.
class SwapActiveWindow extends ActionCommand {
  const SwapActiveWindow({
    required this.direction,
  });

  final Direction direction;

  @override
  String getCommand() {
    return "swapwindow ${direction.name}";
  }
}

/// Center the active window note: floating only.
class CenterActiveWindow extends ActionCommand {
  const CenterActiveWindow({
    this.respectReservedArea = false,
  });

  final bool respectReservedArea;

  @override
  String getCommand() {
    return "centerwindow ${respectReservedArea ? '1' : ''}".trim();
  }
}

/// Resize window.
class ResizeWindowCommand extends ActionCommand {
  const ResizeWindowCommand({
    required this.resize,
    this.window,
  });

  final Resize resize;
  final WindowRef? window;

  @override
  String getCommand() {
    final cmd = window != null ? "resizewindowpixel" : "resizeactive";
    final args = "${resize.toString()}${window != null ? ',$window' : ''}";
    return "dispatch $cmd $args";
  }
}

/// Move window.
class MoveWindowCommand extends ActionCommand {
  const MoveWindowCommand({
    required this.resize,
    this.window,
  });

  final Resize resize;
  final WindowRef? window;

  @override
  String getCommand() {
    final cmd = window != null ? "movewindowpixel" : "moveactive";
    final args = "${resize.toString()}${window != null ? ',$window' : ''}";
    return "dispatch $cmd $args";
  }
}

/// Focuses the next window on a workspace.
class CycleWindowsCommand extends ActionCommand {
  const CycleWindowsCommand({
    this.reverse = false,
    this.onlyTiled = false,
    this.onlyFloating = false,
  });

  final bool reverse;
  final bool onlyTiled;
  final bool onlyFloating;

  @override
  String getCommand() {
    assert(!(onlyTiled && onlyFloating), "Cannot cycle only tiled and only floating at the same time");
    return "dispatch cyclenext${reverse ? ' prev' : ''} ${onlyTiled ? 'tiled' : ''} ${onlyFloating ? 'floating' : ''}".trim();
  }
}

/// Swaps the focused window with the next window on a workspace.
class SwapWindowsCommand extends ActionCommand {
  const SwapWindowsCommand({
    this.reverse = false,
  });

  final bool reverse;

  @override
  String getCommand() {
    return "dispatch swapnext ${reverse ? 'prev' : ''}".trim();
  }
}

/// Focuses the first window matching.
class FocusWindowCommand extends ActionCommand {
  const FocusWindowCommand({
    required this.window,
  });

  final WindowRef window;

  @override
  String getCommand() {
    return "dispatch focuswindow $window";
  }
}

/// Focuses a monitor.
class FocusMonitorCommand extends ActionCommand {
  const FocusMonitorCommand({
    required this.monitor,
  });

  final MonitorRef monitor;

  @override
  String getCommand() {
    return "dispatch focusmonitor $monitor";
  }
}

/// Changes the split ratio.
class SetSplitRatioCommand extends ActionCommand {
  const SetSplitRatioCommand({
    required this.ratio,
    this.relative = false,
  });

  final double ratio;
  final bool relative;

  @override
  String getCommand() {
    return "dispatch splitratio${!relative ? ' exact' : ''} ${relative && ratio > 0 ? '+' : ''}$ratio";
  }
}

/// Toggles the current window to always be opaque. Will override the `opaque` window rules.
class ToggleActiveWindowOpaqueCommand extends ActionCommand {
  const ToggleActiveWindowOpaqueCommand();

  @override
  String getCommand() {
    return "dispatch toggleopaque";
  }
}

/// Moves the cursor to a specified position / corner of the active window.
class MoveCursorCommand extends ActionCommand {
  const MoveCursorCommand({
    this.point,
    this.cornerOfActiveWindow,
  });

  final Point? point;
  final Corner? cornerOfActiveWindow;

  @override
  String getCommand() {
    assert((point == null) != (cornerOfActiveWindow == null), "Either point or cornerOfActiveWindow must be provided");
    final cmd = point != null ? "movecursor" : "movecursortocorner";
    final args = point != null ? "${point!.x} ${point!.y}" : cornerOfActiveWindow!.index;
    return "dispatch $cmd $args";
  }
}

/// Rename a workspace.
class RenameWorkspaceCommand extends ActionCommand {
  const RenameWorkspaceCommand({
    required this.id,
    required this.name,
  });

  final int id;
  final String name;

  @override
  String getCommand() {
    return "dispatch renameworkspace $id $name";
  }
}

/// Exits the compositor with no questions asked.
class ExitCommand extends ActionCommand {
  const ExitCommand();

  @override
  String getCommand() {
    return "dispatch exit";
  }
}

/// Forces the renderer to reload all resources and outputs.
class ForceRendererReloadCommand extends ActionCommand {
  const ForceRendererReloadCommand();

  @override
  String getCommand() {
    return "dispatch forcerendererreload";
  }
}

/// Moves a workspace to a monitor.
class MoveWorkspaceToMonitorCommand extends ActionCommand {
  const MoveWorkspaceToMonitorCommand(this.monitor, {this.workspace});

  final MonitorRef monitor;
  final WorkspaceRef? workspace;

  @override
  String getCommand() {
    final cmd = workspace != null ? "moveworkspacetomonitor" : "movecurrentworkspacetomonitor";
    final args = (workspace != null ? "$workspace " : "") + monitor.toString();
    return "dispatch $cmd $args";
  }
}

/// Focuses the requested workspace on the current monitor, swapping the current workspace to a different monitor if necessary.
class FocusWorkspaceOnCurrentMonitorCommand extends ActionCommand {
  const FocusWorkspaceOnCurrentMonitorCommand({required this.workspace});

  final WorkspaceRef workspace;

  @override
  String getCommand() {
    return "dispatch focusworkspaceoncurrentmonitor $workspace";
  }
}

/// Swaps the active workspaces between two monitors.
class SwapActiveWorkspacesCommand extends ActionCommand {
  const SwapActiveWorkspacesCommand({
    required this.monitor1,
    required this.monitor2,
  });

  final MonitorRef monitor1;
  final MonitorRef monitor2;

  @override
  String getCommand() {
    return "dispatch swapactiveworkspaces $monitor1 $monitor2";
  }
}

/// Brings the current window to the top of the stack.
@Deprecated("Depricated in Hyprland in favor of alterzorder.")
class BringActiveWindowToTopCommand extends ActionCommand {
  const BringActiveWindowToTopCommand();

  @override
  String getCommand() {
    return "dispatch bringactivetotop";
  }
}

/// Modify the window stack order of the active or specified window. Note: this cannot be used to move a floating window behind a tiled one.
class AlterZOrderCommand extends ActionCommand {
  const AlterZOrderCommand({
    required this.alterZOrder,
    this.window,
  });

  final WindowRef? window;
  final AlterZOrder alterZOrder;

  @override
  String getCommand() {
    return "dispatch alterzorder ${alterZOrder.name}${window == null ? '' : ',$window'}";
  }
}

/// Toggles a special workspace on/off.
class ToggleSpecialWorkspaceCommand extends ActionCommand {
  const ToggleSpecialWorkspaceCommand({
    this.name,
  });

  /// Name has to be a special workspace’s name.
  final String? name;

  @override
  String getCommand() {
    return "dispatch togglespecialworkspace ${name ?? ''}".trim();
  }
}

/// Focuses the urgent window or the last window.
class FocusUrgentOrLastCommand extends ActionCommand {
  const FocusUrgentOrLastCommand();

  @override
  String getCommand() {
    return "dispatch focusurgentorlast";
  }
}

/// Toggles the current active window into a group.
class ToggleGroupCommand extends ActionCommand {
  const ToggleGroupCommand();

  @override
  String getCommand() {
    return "dispatch togglegroup";
  }
}

/// switches to the next window in a group.
class ChangeGroupActiveCommand extends ActionCommand {
  const ChangeGroupActiveCommand({
    this.reverse,
    this.index,
  });

  final bool? reverse;
  final int? index;

  @override
  String getCommand() {
    bool? newReverse = reverse;
    if (index == null && reverse == null) {
      newReverse = false;
    }
    assert((index == null) != (newReverse == null), "Either index or reverse must be provided");
    final arg = index != null ? "$index" : (newReverse! ? 'b' : 'f');
    return "dispatch changegroupactive $arg";
  }
}

/// Switch focus from current to previously focused window.
class FocusCurrentOrLastWindowCommand extends ActionCommand {
  const FocusCurrentOrLastWindowCommand();

  @override
  String getCommand() {
    return "dispatch focuscurrentorlast";
  }
}

/// Locks the groups (all groups will not accept new windows).
class LockGroupsCommand extends ActionCommand {
  const LockGroupsCommand({
    required this.status,
  });

  final GroupLockStatus status;

  @override
  String getCommand() {
    return "dispatch lockgroups ${status.name}";
  }
}

/// Lock the focused group (the current group will not accept new windows or be moved to other groups).
class LockGroupActiveCommand extends ActionCommand {
  const LockGroupActiveCommand({
    required this.status,
  });

  final GroupLockStatus status;

  @override
  String getCommand() {
    return "dispatch lockactivegroup ${status.name}";
  }
}

/// Moves the active window into a group in a specified direction. No-op if there is no group in the specified direction.
class MoveIntoGroupCommand extends ActionCommand {
  const MoveIntoGroupCommand({
    required this.direction,
  });

  final Direction direction;

  @override
  String getCommand() {
    return "dispatch moveintogroup ${direction.name}";
  }
}

/// Moves the active window out of a group. No-op if not in a group
class MoveOutOfGroupCommand extends ActionCommand {
  const MoveOutOfGroupCommand({
    this.window,
  });

  final WindowRef? window;

  @override
  String getCommand() {
    return "dispatch moveoutofgroup ${window?.toString() ?? ''}".trim();
  }
}

/// Behaves as `moveintogroup` if there is a group in the given direction. Behaves as `moveoutofgroup` if there is no group in the given direction relative to the active group. Otherwise behaves like `movewindow`.
class MoveWindowOrGroupCommand extends ActionCommand {
  const MoveWindowOrGroupCommand({
    required this.direction,
  });

  final Direction direction;

  @override
  String getCommand() {
    return "dispatch movewindoworgroup $direction";
  }
}

/// Swaps the active window with the next or previous in a group.
class MoveGroupWindowCommand extends ActionCommand {
  const MoveGroupWindowCommand({
    this.reverse = false,
  });

  final bool reverse;

  @override
  String getCommand() {
    return "dispatch movegroupwindow ${reverse ? 'b' : 'f'}";
  }
}

/// Prohibit the active window from becoming or being inserted into group.
class DenyWindowFromGroupCommand extends ActionCommand {
  const DenyWindowFromGroupCommand({
    required this.mode,
  });

  final TurnMode mode;

  @override
  String getCommand() {
    return "dispatch denywindowfromgroup ${mode.name}";
  }
}

/// Temporarily enable or disable binds:ignore_group_lock.
class SetIgnoreGroupLockCommand extends ActionCommand {
  const SetIgnoreGroupLockCommand({
    required this.mode,
  });

  final TurnMode mode;

  @override
  String getCommand() {
    return "dispatch setignoregrouplock ${mode.name}";
  }
}

/// Executes a Global Shortcut using the GlobalShortcuts portal. See [here](https://wiki.hyprland.org/Configuring/Binds/#global-keybinds).
class GlobalCommand extends ActionCommand {
  const GlobalCommand({
    required this.name,
  });

  final String name;

  @override
  String getCommand() {
    return "dispatch global $name";
  }
}

/// Change the current mapping group. See [Submaps](https://wiki.hyprland.org/Configuring/Binds/#submaps).
class SubmapCommand extends ActionCommand {
  const SubmapCommand({
    required this.name,
  });

  final String name;

  @override
  String getCommand() {
    return "dispatch submap $name";
  }
}

/// Change the current mapping group. See [Submaps](https://wiki.hyprland.org/Configuring/Binds/#submaps).
class ResetSubmapCommand extends ActionCommand {
  const ResetSubmapCommand();

  @override
  String getCommand() {
    return "dispatch submap reset";
  }
}
