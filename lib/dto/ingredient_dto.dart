import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ingredient_dto.freezed.dart';
part 'ingredient_dto.g.dart';

@freezed
class IngredientDTO with _$IngredientDTO {
  factory IngredientDTO({
    required String ingredient_id,
    required String name,
    required int count,
    required String measure_unit_name,
  }) = _IngredientDTO;

  factory IngredientDTO.fromJson(Map<String, Object?> json) =>
      _$IngredientDTOFromJson(json);
}
