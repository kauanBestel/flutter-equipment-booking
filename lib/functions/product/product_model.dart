class ProductModel {
  final String id;
  final bool availability;
  final String imagePath;
  final int type;
  final List<Rent?>? rents;

  ProductModel(this.id, this.availability, this.imagePath, this.type, this.rents);
}

class Rent {
  final String userId;
  final DateTime date;

  Rent(this.userId, this.date);
}