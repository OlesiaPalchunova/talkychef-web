// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'total_params_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TotalParamsDTOImpl _$$TotalParamsDTOImplFromJson(Map<String, dynamic> json) =>
    _$TotalParamsDTOImpl(
      total_calories: (json['total_calories'] as num).toInt(),
      total_proteins: (json['total_proteins'] as num).toInt(),
      total_fats: (json['total_fats'] as num).toInt(),
      total_carbohydrates: (json['total_carbohydrates'] as num).toInt(),
      required_calories: (json['required_calories'] as num).toInt(),
      daily_protein_needs: (json['daily_protein_needs'] as num).toInt(),
      daily_fats_needs: (json['daily_fats_needs'] as num).toInt(),
      daily_carbohydrates_needs:
          (json['daily_carbohydrates_needs'] as num).toInt(),
    );

Map<String, dynamic> _$$TotalParamsDTOImplToJson(
        _$TotalParamsDTOImpl instance) =>
    <String, dynamic>{
      'total_calories': instance.total_calories,
      'total_proteins': instance.total_proteins,
      'total_fats': instance.total_fats,
      'total_carbohydrates': instance.total_carbohydrates,
      'required_calories': instance.required_calories,
      'daily_protein_needs': instance.daily_protein_needs,
      'daily_fats_needs': instance.daily_fats_needs,
      'daily_carbohydrates_needs': instance.daily_carbohydrates_needs,
    };
