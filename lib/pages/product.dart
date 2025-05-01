class Package {
  String name;
  String label;
  double price;
  String imageUrl;
  // List<Detail> detail;

  Package(this.name, this.label, this.price, this.imageUrl);

  static List<Package> samples = [
    Package('Package 1', 'Special', 9.90, 'assets/Placeholder.png'),
  ];
}
