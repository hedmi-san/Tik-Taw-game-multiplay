// ignore_for_file: library_prefixes, avoid_print

import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketClient {
  IO.Socket? socket;
  static SocketClient? _instance;

  SocketClient._internal() {
    socket = IO.io(
      'http://localhost:3000',
      IO.OptionBuilder().setTransports([]).enableAutoConnect().build(),
    );
    socket?.on('connect', (_) => print('socket connected'));
  }

  static SocketClient get instance {
    _instance ??= SocketClient._internal();
    return _instance!;
  }
}
