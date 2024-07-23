
import 'package:sberlab/dto/product_dto.dart';
import 'package:sberlab/entity/product.dart';

class ProductMapper{
  @override
  Product fromDto(ProductDTO dto) {
    return Product(
      id: dto.product_id,
      name: dto.product_name,
      serving: dto.serving,
      protein: dto.protein,
      fat: dto.fat,
      carbohydrates: dto.carbohydrates,
      energyValue: dto.energyValue,
      categories: dto.categories,
    );
  }

  @override
  ProductDTO toDto(Product entity) {
    return ProductDTO(
      product_id: entity.id,
      product_name: entity.name,
      serving: entity.serving,
      protein: entity.protein,
      fat: entity.fat,
      carbohydrates: entity.carbohydrates,
      energyValue: entity.energyValue,
      categories: entity.categories,
    );
  }
}
