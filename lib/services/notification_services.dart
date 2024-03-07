import 'package:flutter_local_notifications/flutter_local_notifications.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> initNotifications() async {
  // esta funcion viene con el package
  // Nombre del icono de la notificacion entre los parentesis asi es solo en android:
  const AndroidInitializationSettings initializationSettingsAndroid =
      AndroidInitializationSettings('icon_notification');

// Asi es solo en iOS:
  const DarwinInitializationSettings initializationSettingsIOS =
      DarwinInitializationSettings();

  const InitializationSettings initializationSettings = InitializationSettings(
    android: initializationSettingsAndroid,
    iOS: initializationSettingsIOS,
  );

  await flutterLocalNotificationsPlugin.initialize(initializationSettings);
}

Future<void> showNotification() async {
  const AndroidNotificationDetails androidNotificationDetails =
      AndroidNotificationDetails(
    'channel_id',
    'channel_name',
  );

  const NotificationDetails notificationDetails = NotificationDetails(
    android: androidNotificationDetails,
  );

  await flutterLocalNotificationsPlugin.show(
      1,
      'Mensaje Enviado',
      'Tu pregunta sera respondida lo mas pronto posible.',
      notificationDetails);
}
