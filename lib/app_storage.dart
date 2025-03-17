import 'package:get/get.dart';
import 'package:life/database/app_database.dart';
import 'package:life/database/main_dao.dart';
import 'package:life/database/note_entity.dart';

class AppStorage {
  static late AppDataBase db;
  static late MainDao mainDao;

  static var notes = <GoalEntity>[].obs;

  static Future<void> initDatabase() async {
    db = await $FloorAppDataBase.databaseBuilder('app_database.db').build();
    mainDao = db.mainDao;
    fetchNotes();
  }

  /// Fetches all notes from the database.
  static Future<void> fetchNotes() async {
    notes.value = await mainDao.fetchAllGoals();
  }

  /// Adds a new note to the database.
  static Future<void> addNote(GoalEntity noteEntity) async {
    await mainDao.insertGoal(noteEntity);
    fetchNotes();
  }

  /// Updates a note in the database.
  static void updateNote(GoalEntity note) async {
    await mainDao.updateNote(note);
    fetchNotes();
  }

  /// Deletes a note from the database.
  static void deleteNote(GoalEntity note) async {
    await mainDao.deleteNote(note);
    fetchNotes();
  }
}
