import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'ingredient_dto.dart';

part 'total_params_dto.freezed.dart';
part 'total_params_dto.g.dart';

@freezed
class TotalParamsDTO with _$TotalParamsDTO {
  factory TotalParamsDTO({
    required int total_calories,
    required int total_proteins,
    required int total_fats,
    required int total_carbohydrates,
    required int required_calories,
    required int daily_protein_needs,
    required int daily_fats_needs,
    required int daily_carbohydrates_needs,
  }) = _TotalParamsDTO;

  factory TotalParamsDTO.fromJson(Map<String, Object?> json) =>
      _$TotalParamsDTOFromJson(json);
}
