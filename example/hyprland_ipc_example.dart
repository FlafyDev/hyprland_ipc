import 'package:hyprland_ipc/hyprland_ipc.dart';

// Stream<String> activeWindowClassStream() async* {
//   final connection = await createSocket2Connection();
//   await for (final event in socket2Stream(socket2: connection)) {
//     if (event is ActiveWindow) {
//       yield event.windowClass;
//     }
//   }
// }
//
// // Resolves the Future when Fullscreening a Window.
// Future<void> waitUntilFullscreen() async {
//   final connection = await createSocket2Connection();
//   await for (final event in socket2Stream(socket2: connection)) {
//     if (event is Fullscreen) {
//       if (event.fullscreen) {
//         return;
//       }
//     }
//   }
// }

void main() async {
  final HyprlandIPC hyprlandIPC = await HyprlandIPC.fromInstance();
  print((await hyprlandIPC.getLayers()).first.level);
  hyprlandIPC.eventsStream.listen((event) {
    if (event is FullscreenEvent) {
      print("Fullscreen: ${event.fullscreen}");
    }
  });
}
