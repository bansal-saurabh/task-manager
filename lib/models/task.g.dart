// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TaskAdapter extends TypeAdapter<Task> {
  @override
  final int typeId = 0;

  @override
  Task read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Task()
      ..id = fields[0] as String
      ..title = fields[1] as String
      ..description = fields[2] as String
      ..level = fields[3] as String
      ..created = fields[4] as DateTime
      ..updated = fields[5] as DateTime
      ..targetTime = fields[6] as DateTime
      ..percentComplete = fields[7] as int
      ..isFinished = fields[8] as bool;
  }

  @override
  void write(BinaryWriter writer, Task obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.level)
      ..writeByte(4)
      ..write(obj.created)
      ..writeByte(5)
      ..write(obj.updated)
      ..writeByte(6)
      ..write(obj.targetTime)
      ..writeByte(7)
      ..write(obj.percentComplete)
      ..writeByte(8)
      ..write(obj.isFinished);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TaskAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
