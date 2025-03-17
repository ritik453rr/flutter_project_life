import 'package:get/get.dart';
import 'package:life/database/app_database.dart';
import 'package:life/database/main_dao.dart';
import 'package:life/database/note_entity.dart';

/// Storage class for the app.
class AppStorage {
  static late AppDataBase db;
  static late MainDao mainDao;

  static var goals = <GoalEntity>[].obs;

  /// Initializes the database.
  static Future<void> initDatabase() async {
    db = await $FloorAppDataBase.databaseBuilder('app_database.db').build();
    mainDao = db.mainDao;
    fetchGoals();
  }

  /// Fetches all notes from the database.
  static Future<void> fetchGoals() async {
    goals.value = await mainDao.fetchAllGoals();
  }

  /// Adds a new note to the database.
  static Future<void> addGoal(GoalEntity noteEntity) async {
    await mainDao.insertGoal(noteEntity);
    fetchGoals();
  }

  /// Updates a note in the database.
  static void updateGoal(GoalEntity note) async {
    await mainDao.updateNote(note);
    fetchGoals();
  }

  /// Deletes a note from the database.
  static void deleteGoal(GoalEntity note) async {
    await mainDao.deleteNote(note);
    fetchGoals();
  }

  /// Finds a note by its ID.
  static GoalEntity findNoteById(int id) {
    return AppStorage.goals
        .cast<GoalEntity>()
        .firstWhere((note) => note.id == id);
  }
}
