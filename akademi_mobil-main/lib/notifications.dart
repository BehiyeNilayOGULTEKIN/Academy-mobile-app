import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

void showNotification(RemoteMessage message) async {
  var androidDetails = const AndroidNotificationDetails(
      'channelId', 'channelName',
      channelDescription: 'channelDescription',
      importance: Importance.max,
      icon: 'ic_launcher');
  var platformDetails = NotificationDetails(
    android: androidDetails, /*iOS: iosDetails*/
  );
  await flutterLocalNotificationsPlugin.show(0, message.notification!.title,
      message.notification!.body, platformDetails,
      payload: message.data['route']);
}
