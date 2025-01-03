class IceCream {
  String name;
  String bgImageUrl;
  String icon;
  String type;
  List<String> imageUrl;
  double price;
  num rating;
  num review;
  num command;
  String description;

  IceCream(
    this.name,
    this.bgImageUrl,
    this.icon,
    this.type,
    this.imageUrl,
    this.price,
    this.rating,
    this.review,
    this.command,
    this.description,
  );

  static List<IceCream> icecreams() {
    return [
      IceCream(
          'Chocolate Ice Cream',
          'assets/images/chocolat.jpg',
          'assets/icons/chocolate.png',
          'Chocolate',
          [
            'assets/images/chocolate.jpg',
            'assets/images/chocolate.jpg',
            'assets/images/chocolate.jpg',
          ],
          9.23,
          4.2,
          226,
          148,
          'Chocolate ice cream is a rich, creamy, and decadent dessert made with cocoa powder, sugar, milk, and cream. It is a classic flavor that is loved by many people all over the world. Chocolate ice cream is perfect for any occasion, whether it is a birthday party, a family gathering, or just a simple treat after dinner. It is a versatile flavor that can be enjoyed on its own or paired with other desserts like brownies, cookies, or cake. Chocolate ice cream is a delicious and indulgent treat that is sure to satisfy your sweet tooth.'
      ),
      IceCream(
          'Lemon Ice Cream',
          'assets/images/citron.png',
          'assets/icons/citrus.png',
          'Lemon',
          [
            'assets/images/citron.png',
            'assets/images/citron.png',
            'assets/images/citron.png',
          ],
          8.23,
          3.2,
          120,
          248,
          'Lemon ice cream is a refreshing and tangy dessert made with fresh lemon juice, sugar, milk, and cream. It is a light and citrusy flavor that is perfect for hot summer days. Lemon ice cream is a great alternative to traditional flavors like chocolate and vanilla, and it is a popular choice for those who enjoy fruity desserts. Lemon ice cream is a versatile flavor that can be enjoyed on its own or paired with other desserts like pie, cake, or cookies. It is a delicious and zesty treat that is sure to brighten up your day.'
      ),
      IceCream(
          'Apple Ice Cream',
          'assets/images/pomme.jpg',
          'assets/icons/apple.png',
          'Apple',
          [
            'assets/images/pomme.jpg',
            'assets/images/pomme.jpg',
            'assets/images/pomme.jpg',
          ],
          7.23,
          4.5,
          326,
          148,
          'Apple ice cream is a sweet and creamy dessert made with fresh apples, sugar, milk, and cream. It is a delicious and comforting flavor that is perfect for fall and winter. Apple ice cream is a great way to enjoy the flavors of the season in a cool and refreshing treat. It is a versatile flavor that can be enjoyed on its own or paired with other desserts like pie, cake, or crumble. Apple ice cream is a delicious and indulgent treat that is sure to satisfy your sweet tooth.'
      ),
      IceCream(
          'Strawberry Ice Cream',
          'assets/images/fraise.jpg',
          'assets/icons/strawberry.png',
          'Strawberry',
          [
            'assets/images/fraise.jpg',
            'assets/images/fraise.jpg',
            'assets/images/fraise.jpg',
          ],
          6.23,
          4.8,
          426,
          248,
          'Strawberry ice cream is a sweet and creamy dessert made with fresh strawberries, sugar, milk, and cream. It is a classic flavor that is loved by many people all over the world. Strawberry ice cream is perfect for any occasion, whether it is a birthday party, a family gathering, or just a simple treat after dinner. It is a versatile flavor that can be enjoyed on its own or paired with other desserts like pie, cake, or cookies. Strawberry ice cream is a delicious and indulgent treat that is sure to satisfy your sweet tooth.'
      ),
    ];
  }
}
