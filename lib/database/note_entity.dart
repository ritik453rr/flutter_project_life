import 'package:floor/floor.dart';

@Entity()
class GoalEntity {
  @PrimaryKey(autoGenerate: true)
  int? id;
  String title;
  String data;

  GoalEntity({this.id, required this.title, required this.data});
}
