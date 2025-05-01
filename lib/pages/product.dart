class Package {
  String name;
  String label;
  double price;
  String imageUrl;
  // List<Detail> detail;

  Package(this.name, this.label, this.price, this.imageUrl);

  static List<Package> samples = [
    Package('Package 1', 'Special', 9.90, 'assets/placeholder.png'),
    Package('Package 2', 'Regular', 5.50, 'assets/placeholder.png'),
    Package('Package 3', 'Limited', 20.90, 'assets/placeholder.png'),
    Package('Package 4', 'Regular', 12.90, 'assets/placeholder.png'),
  ];
}
