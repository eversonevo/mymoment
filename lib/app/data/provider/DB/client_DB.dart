import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final _dbName = 'appGetxSqllite.db';
  static final _dbVersion = 1;
  static final _tableName = 'Clients';
  static final clientId = 'clientId';
  static final clientName = 'clientName';
  static final clientPhone = 'clientPhone';

  DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;

  Future<Database> get database async {
    print("passei database");
    return _database ??= await _initDatabase();
  }

  _initDatabase() async {
    print("entrei inicializacao)");
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, _dbName);
    return await openDatabase(path, version: _dbVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute("CREATE TABLE $_tableName ("
        "$clientId INTEGER PRIMARY KEY,"
        "$clientName TEXT NOT NULL,"
        "$clientPhone TEXT NOT NULL)");
  }

    Future<List<Map<String, dynamic>>> queryAllRows() async {
       Database db = await instance.database;
        var res = await db.query(_tableName, orderBy: "$clientId DESC");
        print("opaa passei");
        print("resuldado"+res.toString());
      return res;
      
  }

  Future<int> insert() async {

 // get a reference to the database
    // because this is an expensive operation we use async and await
    Database db = await DatabaseHelper.instance.database;

    // row to insert
    Map<String, dynamic> row = {
      DatabaseHelper.clientName : 'Evo',
      DatabaseHelper.clientPhone  : '41999562364'
    };

    // do the insert and get the id of the inserted row
    int id = await db.insert(DatabaseHelper._tableName, row);

    // show the results: print all rows in the db
      print(await db.query(DatabaseHelper._tableName));
      print("aaaaaa"+id.toString());
      return id;
  }

}
