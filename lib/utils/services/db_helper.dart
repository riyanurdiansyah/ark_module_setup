import 'package:sqflite/sqflite.dart' as sql;
import 'package:path/path.dart' as path;

class DBHelper {
  static Future<sql.Database> database() async {
    final dbPath = await sql.getDatabasesPath();
    return sql.openDatabase(path.join(dbPath, 'arkademi.db'),
        onCreate: (db, version) async {
      await db.execute(
          'CREATE TABLE offline_video (unit_id INTEGER PRIMARY KEY, unit_video_path TEXT, unit_expired TEXT)');
      await db.execute(
          'CREATE TABLE download_progress (unit_id INTEGER PRIMARY KEY, is_downloaded TEXT)');
      await db.execute(
          'CREATE TABLE task_ids (unit_id INTEGER PRIMARY KEY, task_id TEXT)');
      await db.execute(
          'CREATE TABLE popup_coin (popup_id INTEGER PRIMARY KEY, id_user INTEGER, tag TEXT)');
      // await db.execute(
      //     'CREATE TABLE tour (user_id INTEGER PRIMARY KEY, first_init TEXT)');
    }, version: 1);
  }

  static Future<void> insert(String table, Map<String, dynamic> data) async {
    final db = await DBHelper.database();
    db.insert(
      table,
      data,
      conflictAlgorithm: sql.ConflictAlgorithm.replace,
    );
  }

  static Future<List<Map<String, dynamic>>> getTable(
      String table, List<String> columns) async {
    final db = await DBHelper.database();
    return db.query(table, columns: columns);
  }

  static Future<List<Map<String, dynamic>>> getTableWithWhere(
      String table, List<String> columns, courseId) async {
    final db = await DBHelper.database();

    return db.query(table,
        columns: columns, where: 'unit_id=?', whereArgs: [courseId]);
  }

  static Future<List<Map<String, dynamic>>> getTablePopUpCoin(
      String table, List<String> columns) async {
    final db = await DBHelper.database();

    return db.query(table, columns: columns);
  }

  static Future<int> delete(String table, int id) async {
    final db = await DBHelper.database();
    return await db.delete(table, where: 'unit_id = ?', whereArgs: [id]);
  }
}
