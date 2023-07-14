import 'package:isar/isar.dart';
import 'package:sand/models/tasks.dart';
part 'username.g.dart';
@Collection()
class Username{
  Id id = Isar.autoIncrement;
  late String name;
  final tasks = IsarLinks<Tasks>();
}