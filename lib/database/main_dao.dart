
import 'package:floor/floor.dart';
import 'package:life/database/note_entity.dart';

/// MainDao is the Data Access Object (DAO) for the NoteEntity class.
@dao
abstract class MainDao {
  
  @Query('SELECT * FROM NoteEntity')
  Future<List<NoteEntity>> getAllNotes();

  @insert
  Future<void> insertNote(NoteEntity noteEntity);

  @update
  Future<void> updateNote(NoteEntity noteEntity);

  @delete
  Future<void> deleteNote(NoteEntity noteEntity);

}
