class ItemList {
  final imagePath;
  final name;
  final rating;
  final ratingStrength;

  ItemList({this.imagePath, this.name, this.rating, this.ratingStrength});

  static final List<ItemList> itemData = [
    ItemList(
      imagePath: 'https://picsum.photos/200',
      name: 'Burger 1',
      rating: '4.2',
      ratingStrength: '125'
    ),
    ItemList(
      imagePath: 'https://picsum.photos/200',
      name: 'Burger 2',
      rating: '4.0',
      ratingStrength: '128'
    ),
    ItemList(
      imagePath: 'https://picsum.photos/200',
      name: 'Burger 3',
      rating: '3.8',
      ratingStrength:' 102'
    ),
    ItemList(
      imagePath: 'https://picsum.photos/200',
      name: 'Burger 4',
      rating: '4.7',
      ratingStrength: '250'
    )
  ];
}