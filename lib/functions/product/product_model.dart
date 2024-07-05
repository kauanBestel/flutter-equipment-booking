class ProductModel {
  final String id;
  final bool availability;
  final String imagePath;
  final int type;
  final List<Rent?>? rents;

  ProductModel({
    required this.id,
    required this.availability,
    required this.imagePath,
    required this.type,
    this.rents,
  });

  static ProductModel fromJson(Map<String, dynamic> json) {
    List<Rent?>? rentsList = [];
    if (json['rents'] != null) {
      var rentsJson = json['rents'] as List<dynamic>;
      rentsList = rentsJson.map((rent) => Rent.fromJson(rent)).toList();
    }

    return ProductModel(
      id: json['id'],
      availability: json['availability'],
      imagePath: json['imagePath'],
      type: json['type'],
      rents: rentsList,
    );
  }

  Map<String, dynamic> toJson() {
    List<Map<String, dynamic>?>? rentsJsonList;
    if (rents != null) {
      rentsJsonList = rents!.map((rent) => rent?.toJson()).toList();
    }

    return {
      'id': id,
      'availability': availability,
      'imagePath': imagePath,
      'type': type,
      'rents': rentsJsonList,
    };
  }
}

class Rent {
  final String userId;
  final DateTime date;

  Rent({
    required this.userId,
    required this.date,
  });

  static Rent fromJson(Map<String, dynamic> json) {
    return Rent(
      userId: json['userId'],
      date: DateTime.parse(json['date']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'date': date.toIso8601String(),
    };
  }
}