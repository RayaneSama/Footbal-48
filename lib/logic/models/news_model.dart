// ignore_for_file: non_constant_identifier_names

class NewsData {
  final String? titre_art;
  final String? auteur_art;
  final String? description_art;
  final String? image_art;
  final String? date_art;

  // Constructor with named parameters and default values
  NewsData({
    this.titre_art,
    this.auteur_art,
    this.description_art,
    this.date_art,
    this.image_art,
  });

  // Factory constructor to create NewsData from JSON
  factory NewsData.fromJson(Map<String, dynamic> json) {
    return NewsData(
      titre_art: json['titre_art'] as String?,
      auteur_art: json['auteur_art'] as String?,
      description_art: json['description_art'] as String?,
      date_art: json['date_art'] as String?,
      image_art: json['image_art'] as String?,
    );
  }
}
