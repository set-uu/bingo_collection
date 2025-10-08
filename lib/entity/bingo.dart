class Bingo {
  String id;
  String title;
  String description;
  String ownerId;
  List<BingoItem> items;

  Bingo({
    required this.id,
    required this.title,
    required this.description,
    required this.ownerId,
    required this.items,
  });
}

class BingoItem {
  String id;
  String content;
  String imageUrl;
  bool isChecked;

  BingoItem({
    required this.id,
    required this.content,
    required this.imageUrl,
    this.isChecked = false,
  });
}