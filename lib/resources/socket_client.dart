import 'package:socket_io_client/socket_io_client.dart' as IO;

class SocketClient {
  IO.Socket? socket;

  void initializeSocket() {
    // Replace '192.168.x.x' with your local IP address
    socket = IO.io('http://localhost:3000', <String, dynamic>{
      'transports': ['websocket'],
      'autoConnect': false,
    });

    // Connect to the server
    socket?.connect();

    // Handle connection
    socket?.onConnect((_) {
      print('Connected to the server');
    });

    // Handle disconnection
    socket?.onDisconnect((_) {
      print('Disconnected from the server');
    });

    // Handle custom events from the server
    socket?.on('event', (data) {
      print('Event received: $data');
    });

    // Handle errors
    socket?.onError((error) {
      print('Socket error: $error');
    });

    // Handle connection timeout
    socket?.onConnectTimeout((data) {
      print('Connection timeout: $data');
    });
  }

  void createRoom(String nickname) {
    socket?.emit('CreateRoom', {'nickname': nickname});
  }
}
