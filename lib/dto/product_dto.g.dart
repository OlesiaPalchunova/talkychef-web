// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDTOImpl _$$ProductDTOImplFromJson(Map<String, dynamic> json) =>
    _$ProductDTOImpl(
      product_id: (json['product_id'] as num).toInt(),
      product_name: json['product_name'] as String,
      serving: (json['serving'] as num).toInt(),
      protein: (json['protein'] as num).toInt(),
      fat: (json['fat'] as num).toInt(),
      carbohydrates: (json['carbohydrates'] as num).toInt(),
      energyValue: (json['energyValue'] as num).toInt(),
      categories: json['categories'] as String,
    );

Map<String, dynamic> _$$ProductDTOImplToJson(_$ProductDTOImpl instance) =>
    <String, dynamic>{
      'product_id': instance.product_id,
      'product_name': instance.product_name,
      'serving': instance.serving,
      'protein': instance.protein,
      'fat': instance.fat,
      'carbohydrates': instance.carbohydrates,
      'energyValue': instance.energyValue,
      'categories': instance.categories,
    };
