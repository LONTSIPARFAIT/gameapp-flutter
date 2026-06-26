class Game {
  String bgImage;
  String icon;
  String name;
  String type;
  num score;
  num download;
  num rewiew;
  String description;
  List<String> images;

  Game(
    this.bgImage,
    this.icon,
    this.name,
    this.type,
    this.score,
    this.download,
    this.rewiew,
    this.description,
    this.images,
  );

  static List<Game> games() {
    return [
      Game(
        'assets/images/img.jpg',
        'assets/images/img.jpg',
        'Ori and The forest',
        'Adventure',
        4.5,
        382,
        324,
        "Ori is stranger to peril, but when a fateful flight puts the oulet ku in har'as way.",
        ['assets/images/img.jpg', 'assets/images/img.jpg', 'assets/images/img.jpg'],
      ),
    ];
  }
}
