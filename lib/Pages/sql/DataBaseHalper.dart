import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
class DbHelper{
  static final DbHelper _instanse = DbHelper.internal();
  factory DbHelper() => _instanse ;
  DbHelper.internal();
  static Database? database ;

  Future<Database> createDataBase()async{
    if(database != null)
      {
        return database!;
      }

    String path = join(await getDatabasesPath() , 'coursesFile');
    database =await openDatabase(path ,version: 1 ,onCreate: (Database db , int v){

    });

    return database! ;
  }


}