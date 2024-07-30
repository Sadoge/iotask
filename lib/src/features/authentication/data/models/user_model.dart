import 'package:iotask/src/features/authentication/domain/entities/user.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:pocketbase/pocketbase.dart';

part 'user_model.g.dart';

@JsonSerializable()
class UserModel extends User {
  UserModel({
    required super.id,
    required super.email,
    required super.name,
  });

  factory UserModel.fromRecord(RecordModel record) =>
      UserModel.fromJson(record.toJson());

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
