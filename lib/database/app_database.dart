import 'dart:async';

import 'package:floor/floor.dart';

import 'package:life/database/main_dao.dart';
import 'package:life/database/note_entity.dart';

import 'package:sqflite/sqflite.dart' as sqflite;

part 'app_database.g.dart'; // the generated code will be there

@Database(version: 1, entities: [NoteEntity])
abstract class AppDataBase extends FloorDatabase {
  MainDao get mainDao;
}
