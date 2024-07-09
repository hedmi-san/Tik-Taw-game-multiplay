import 'package:socket_io_client/socket_io_client.dart' as io;

class SocketClient {
  io.Socket? socket;
  static SocketClient? _instance;

  SocketClient._internal() {
    socket = io.io('192.168.199.16:3000', <String, dynamic>{
      'transport': ['websocket'],
      'autoconnect': false,
    });
    socket!.connect();
  }
  static SocketClient? get instance {
    _instance ??= SocketClient._instance;
    return _instance;
  }
}
