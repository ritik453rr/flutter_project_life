import 'package:floor/floor.dart';

@Entity()
class NoteEntity {
  @PrimaryKey(autoGenerate: true)
  int? id;
  String title;
  String data;

  NoteEntity({this.id, required this.title, required this.data});
}