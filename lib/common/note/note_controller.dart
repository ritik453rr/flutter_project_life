import 'package:get/get.dart';
import 'package:life/database/app_database.dart';
import 'package:life/database/main_dao.dart';
import 'package:life/database/note_entity.dart';

class NoteController extends GetxController {
  late AppDataBase db;
  late MainDao mainDao;

  var notes = <NoteEntity>[].obs;

  @override
  void onInit() {
    super.onInit();
    initDatabase();
  }

  void initDatabase() async {
    db = await $FloorAppDataBase.databaseBuilder('app_database.db').build();
    mainDao = db.mainDao;
    fetchNotes();
  }

  /// Fetches all notes from the database.
 Future<void> fetchNotes() async {
    notes.value = await mainDao.getAllNotes();
  }

  /// Adds a new note to the database.
  Future<void> addNote(NoteEntity noteEntity) async {
    await mainDao.insertNote(noteEntity);
    fetchNotes();
  }

  /// Updates a note in the database.
  void updateNote(NoteEntity note) async {
    await mainDao.updateNote(note);
    fetchNotes();
  }

  /// Deletes a note from the database.
  void deleteNote(NoteEntity note) async {
    await mainDao.deleteNote(note);
    fetchNotes();
  }
}
