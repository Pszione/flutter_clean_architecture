// NOT depend on:
// imports, JSON, packages, flutter material
// or any other 3rd party dependencies

class CarEntity {
  CarEntity({
    required this.numberPlate,
    required this.color,
    required this.doorsNumber,
    required this.price,
  });

  String numberPlate;
  String color;
  int doorsNumber;
  double price;

  double get priceMultiplied {
    // this business logic depends only in itself
    return price * doorsNumber;
  }

  void setPriceBusinessLogic() {
    if (priceMultiplied >= 10000.0) {
      price *= 2;
    }
  }
}
