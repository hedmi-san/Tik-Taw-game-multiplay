import 'package:tiktaw/resources/socket_client.dart';

class SocketMethod {
  final _socketClient = SocketClient.instance.socket;
  void createRoom(String nickname) {
    if (nickname.isNotEmpty) {
      _socketClient?.emit('createRoom', {
        'nickname': nickname,
      });
    }
  }
}
