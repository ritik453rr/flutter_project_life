import 'package:floor/floor.dart';
import 'package:life/database/note_entity.dart';

/// MainDao is the Data Access Object (DAO) for the NoteEntity class.
@dao
abstract class MainDao {
  @Query('SELECT * FROM NoteEntity')
  Future<List<GoalEntity>> fetchAllGoals();

  @insert
  Future<void> insertGoal(GoalEntity noteEntity);

  @update
  Future<void> updateNote(GoalEntity noteEntity);

  @delete
  Future<void> deleteNote(GoalEntity noteEntity);
}
