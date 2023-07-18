import 'package:isar/isar.dart';
import 'package:sand/models/localdb/username.dart';
part 'tasks.g.dart';
@Collection()
class Tasks{
  Id id = Isar.autoIncrement;
  late String taskname;
  late DateTime focustime;
  late bool isdone;
  @Backlink(to: "tasks")
  final username = IsarLink<Username>();
}