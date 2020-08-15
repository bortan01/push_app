import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';

//dVPpP65klCc:APA91bE89sOevN-Bxy4jVRXKwwkUrfAONFGL0xFeQA_R86hoem_OZaGQUVwB7LzEIzxE-M93cNksD32kueKyqxq0Hf8tHcHOnPXGqAa000Wj8V5PxCxXJwdq4THs5bFMOF2ERzzcarm0
class PushNotificationProvider {
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
  final _mensajeStreamController = StreamController<String>.broadcast();

  Stream<String> get mensajesStreams => _mensajeStreamController.stream;

  dispose() {
    _mensajeStreamController?.close();
  }

  static Future<dynamic> mensajeBackground(Map<String, dynamic> message) async {
    if (message.containsKey('data')) {
      // Handle data message
      final dynamic data = message['data'];
    }

    if (message.containsKey('notification')) {
      // Handle notification message
      final dynamic notification = message['notification'];
    }

    // Or do other work.
  }

  iniciarNotificaciones() async {
    await _firebaseMessaging.requestNotificationPermissions();
    final token = await _firebaseMessaging.getToken();
    //  print("el token es $token");

    _firebaseMessaging.configure(
      onMessage: onMessage,
      onBackgroundMessage: mensajeBackground,
      onLaunch: onLaunch,
      onResume: onResume,
    );
  }

  Future<dynamic> onMessage(Map<String, dynamic> message) async {
    //print("====on message====");
    final argumento = message['data']['COMIDA'];
    //print(argumento);S
    _mensajeStreamController.sink.add(argumento);
  }

  Future<dynamic> onLaunch(Map<String, dynamic> message) async {
    print("====on Launch====");

    final argumento = message['data']['COMIDA'];
    _mensajeStreamController.sink.add(argumento);
  }

  Future<dynamic> onResume(Map<String, dynamic> message) async {
    print("====on Resume====");
    final argumento = message['data']['COMIDA'];
    _mensajeStreamController.sink.add(argumento);
  }
}
