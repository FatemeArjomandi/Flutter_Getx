class Product {
  final String name;
  final double price;
  final String imageUrl;
  const Product(
      {required this.name, required this.price, required this.imageUrl});

  static const List<Product> products = [
    Product(
        name: "Apple",
        price: 2.99,
        imageUrl:
            'https://st.depositphotos.com/1000141/3428/i/600/depositphotos_34288697-stock-photo-ripe-apple-with-leaf.jpg'),
    Product(
        name: "Orange",
        price: 3.66,
        imageUrl:
            'https://media.istockphoto.com/id/185284489/photo/orange.jpg?b=1&s=170667a&w=0&k=20&c=a9rTa5lUsFBIz3RkL-dTXZV3oa9iRmP1lMVyTPoPA60='),
    Product(
        name: 'Pear',
        price: 3.87,
        imageUrl:
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmHFWPi5O7rGvrmFXegp3USCy6M8uGtLA1B_uBAxYsFA&s')
  ];
}
