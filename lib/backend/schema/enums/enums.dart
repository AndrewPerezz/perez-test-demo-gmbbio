import 'package:collection/collection.dart';

enum GenderOptions {
  Male,
  Female,
  Hybrid,
}

enum CategoryOptions {
  Accessories_Gadgets,
  Children,
  Clothing_Fashion,
  Cosmetics_Beauty,
  Education,
  Fitness_Outdoors,
  Food_Beverage,
  Health_SelfCare,
  Lifestyle_Home,
  Media_Entertainment,
  Other,
  PetProducts,
  Services,
  Software_Tech,
  Travel_Auto,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (GenderOptions):
      return GenderOptions.values.deserialize(value) as T?;
    case (CategoryOptions):
      return CategoryOptions.values.deserialize(value) as T?;
    default:
      return null;
  }
}
