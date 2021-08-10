import 'package:my_moment/app/data/provider/DB/client_DB.dart';
import 'package:my_moment/app/data/repository/client_repository.dart';
//import 'package:sqflite/sqflite.dart';

class ClientProvider implements ClientRepository {
  late DatabaseHelper _dataHelper;



/*

  static final _databaseName = "clientDB.db";
  static final _databaseVersion = 1;
  static final table = "clients";
  static final columnId = 'idClient';
  static final columnName = 'nameClient';
  static final columnPhone = 'phoneClient';

  late Client _client;

  Client get client => _client;

  set client(Client client) {
    _client = client;
  }

//ClientProvider._privateConstructor();
//static final ClientProvider instance = ClientProvider._privateConstructor();
  static Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  Future<Database> getDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();

    String path = join(documentsDirectory.path, 'novobanco.db');
    return openDatabase(
      path,
      onCreate: (db, version) {
        db.execute(ContactDao.tableSql);
      },
      version: 1,
    );
  }

  _initDatabase() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
  CREATE TABLE $table (
    $columnId INTEGER PRIMARY KEY AUTOINCREMENT,
    $columnName TEXT NOT NULL
    $columnPhone TEXT NOT NULL
  )
  ''');
  }
 
*/

  void createBD() async {
    _dataHelper = DatabaseHelper.instance;

    _dataHelper.database;

    //print("Banco de Dados ${db.getVersion()}");
  }

  @override
  void openBD() {    
    createBD();    
  }

  @override
  void insertDB() async {
    _dataHelper = DatabaseHelper.instance;

    int i = await _dataHelper.insert();   
    print(i);
  }

  @override
  void deleteDB(String idClient) {}

  @override
  void updateDB(String idClient) {}

  @override
  void searchDB(String item) {}

  @override
  getAllDB() async{

    _dataHelper = DatabaseHelper.instance;

    List<Map<String, dynamic>> res = await _dataHelper.queryAllRows();    
    print("resuldado 2"+res.toString());
  }
}

/*class DatabaseHelper {
  static final table = "todo";
  static final columnId = 'id';
  static final columnTitle = 'title';

  Future<int> insert(TaskData todo) async {
    Database db = await instance.database;
    var res = await db.insert(table, todo.toMap());
    return res;
  }

  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await instance.database;
    var res = await db.query(table, orderBy: "$columnId DESC");
    return res;
  }

  Future<int> delete(int id) async {
    Database db = await instance.database;
    return await db.delete(table, where: '$columnId = ?', whereArgs: [id]);
  }

  Future<void> clearTable() async {
    Database db = await instance.database;
    return await db.rawQuery("DELETE FROM $table");
  }
}

*/






/*
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class ProviderClient {  
  
  static final _databaseName = "clientsDB.db";
  static final _databaseVersion = 1;
  static final table = 'clients';  
  static final columnId = '_idClient';
  static final columnNome = 'nanmeClient';
  static final columnIdade = 'phoneClient';
  
  // torna esta classe singleton
  //ProviderClient._privateConstructor();
  //static final ProviderClient instance = ProviderClient._privateConstructor();
  // tem somente uma referência ao banco de dados
  //static Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    // instancia o db na primeira vez que for acessado
    _database = await _initDatabase();
    return _database;
  }  
  // abre o banco de dados e o cria se ele não existir
  _initDatabase() async {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, _databaseName);
    return await openDatabase(path,
        version: _databaseVersion,
        onCreate: _onCreate);
  }
  // Código SQL para criar o banco de dados e a tabela
  Future _onCreate(Database db, int version) async {
    await db.execute('''
          CREATE TABLE $table (
            $columnId INTEGER PRIMARY KEY,
            $columnNome TEXT NOT NULL,
            $columnIdade INTEGER NOT NULL
          )
          ''');
  }  
  // métodos Helper
  //----------------------------------------------------
  // Insere uma linha no banco de dados onde cada chave 
  // no Map é um nome de coluna e o valor é o valor da coluna. 
  // O valor de retorno é o id da linha inserida.
  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert(table, row);
  }
  // Todas as linhas são retornadas como uma lista de mapas, onde cada mapa é
  // uma lista de valores-chave de colunas.
  Future<List<Map<String, dynamic>>> queryAllRows() async {
    Database db = await instance.database;
    return await db.query(table);
  }
  // Todos os métodos : inserir, consultar, atualizar e excluir, 
  // também podem ser feitos usando  comandos SQL brutos. 
  // Esse método usa uma consulta bruta para fornecer a contagem de linhas.
  Future<int> queryRowCount() async {
    Database db = await instance.database;
    return Sqflite.firstIntValue(await db.rawQuery('SELECT COUNT(*) FROM $table'));
  }
  // Assumimos aqui que a coluna id no mapa está definida. Os outros
  // valores das colunas serão usados para atualizar a linha.
  Future<int> update(Map<String, dynamic> row) async {
    Database db = await instance.database;
    int id = row[columnId];
    return await db.update(table, row, where: '$columnId = ?', whereArgs: [id]);
  }
  // Exclui a linha especificada pelo id. O número de linhas afetadas é
  // retornada. Isso deve ser igual a 1, contanto que a linha exista.
  Future<int> delete(int id) async {
    Database db = await instance.database;
    return await db.delete(table, where: '$columnId = ?', whereArgs: [id]);
  }
}

*/