import 'package:hive/hive.dart';

part 'task.g.dart';

@HiveType(typeId: 0)
class Task extends HiveObject {
  @HiveField(0)
  late String id;

  @HiveField(1)
  late String title;

  @HiveField(2)
  late String description;

  @HiveField(3)
  late String level;

  @HiveField(4)
  late DateTime created;

  @HiveField(5)
  late DateTime updated;

  @HiveField(6)
  late DateTime targetTime;

  @HiveField(7)
  late int percentComplete;

  @HiveField(8)
  late bool isFinished;
}
