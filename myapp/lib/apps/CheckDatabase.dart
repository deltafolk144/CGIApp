import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class CheckDatabase {
  String dbName = 'myDatabase';

  Future<Database> openDatabase() async {
    Directory appDir = await getApplicationDocumentsDirectory();
    String dbDir = '${appDir.path}/$dbName';

    DatabaseFactory dbFactory = databaseFactoryIo;
    Database db = await dbFactory.openDatabase(dbDir);
    return db;
  }

  saveToken(String token) async {
    var db = await CheckDatabase().openDatabase();
    var store = intMapStoreFactory.store('authentication');
    var key = store.add(db, {'token': token});
    db.close();
  }

  Future<bool> getToken() async {
    var db = await CheckDatabase().openDatabase();
    var store = intMapStoreFactory.store('authentication');
    var data = await store.find(db);
    if (data.length > 0) {
      //print(data[0].value.values);
      return true;
    } else {
      //print('no data');
      return false;
    }
  }
}
