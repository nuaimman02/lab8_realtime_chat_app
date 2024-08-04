import 'package:firebase_core/firebase_core.dart';
import 'package:get_it/get_it.dart';
import 'package:lab8_realtime_chat_app/firebase_options.dart';
import 'package:lab8_realtime_chat_app/services/alertservice.dart';
import 'package:lab8_realtime_chat_app/services/authservice.dart';
import 'package:lab8_realtime_chat_app/services/databaseservice.dart';
import 'package:lab8_realtime_chat_app/services/mediaservice.dart';
import 'package:lab8_realtime_chat_app/services/navigationservice.dart';
import 'package:lab8_realtime_chat_app/services/storageservice.dart';

Future<void> setupFirebase() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

Future<void> registerServices() async {
  final GetIt getIt = GetIt.instance;
  getIt.registerSingleton<AuthService>(AuthService());
  getIt.registerSingleton<NavigationService>(NavigationService());
  getIt.registerSingleton<AlertService>(AlertService());
  getIt.registerSingleton<MediaService>(MediaService());
  getIt.registerSingleton<StorageService>(StorageService());
  getIt.registerSingleton<DatabaseService>(DatabaseService());
}

String generateChatID({required String uid1, required String uid2}){
  List uids = [uid1, uid2];
  uids.sort();
  String chatID = uids.fold("", (id, uid) => "$id$uid");
  return chatID;
}