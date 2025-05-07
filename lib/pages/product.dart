class Package {
  String name;
  String label;
  double price;
  String imageUrl;
  MenuCategory category; // Added category for classification
  List<Detail> details;

  Package({
    required this.name,
    required this.label,
    required this.price,
    required this.imageUrl,
    required this.category,
    required this.details,
  });

  static List<Package> samples = [
    //MEALS
    Package(
      name: 'Ultimate Chicken Combo',
      label: 'Meal',
      price: 18.50,
      imageUrl: 'assets/ultimatechick.jpg',
      category: MenuCategory.meal,
      details: [
        Detail('In the Set:', '1x Big Taco, 1x Soft Drink \n 1x Nacho'),
        Detail(
          '',
          'A hearty combo featuring a taco, nachos, and a refreshing drink — perfect for big appetites!',
        ),
      ],
    ),

    Package(
      name: 'Taco Supreme Combo',
      label: 'Meal',
      price: 21.50,
      imageUrl: 'assets/tacosupreme.jpg',
      category: MenuCategory.meal,
      details: [
        Detail('In the Set:', '2x Taco Supreme, 1x Soft Drink \n 1x Nacho '),
        Detail(
          '',
          'Two hearty tacos stuffed with seasoned beef, beans, and fresh veggies — paired with nachos and Pepsi.',
        ),
      ],
    ),

    Package(
      name: 'CHICKSTAR Combo',
      label: 'Meal',
      price: 20.50,
      imageUrl: 'assets/chickstar.jpg',
      category: MenuCategory.meal,
      details: [
        Detail('In the Set:', '1x Big Chicken Wrap, 1x Soft Drink \n 1x Nacho'),
        Detail(
          '',
          'Crispy chicken wrapped in a soft tortilla, topped with lettuce and sauce — served with nachos and Pepsi.',
        ),
      ],
    ),

    Package(
      name: 'Grilled Burrito Combo',
      label: 'Meal',
      price: 23.50,
      imageUrl: 'assets/grilledburrito.jpg',
      category: MenuCategory.meal,
      details: [
        Detail('In the Set:', '1x Grilled Tortilla, 1x Soft Drink \n 1x Nacho'),
        Detail(
          '',
          'A grilled tortilla stuffed with beans, meat, cheese, and veggies — comes with nachos and a Pepsi.',
        ),
      ],
    ),

    //ALACARTE
    Package(
      name: 'Crunchwrap Supreme',
      label: 'Ala Carte',
      price: 12.78,
      imageUrl: 'assets/crunchwrap.jpg',
      category: MenuCategory.alaCarte,
      details: [
        Detail('In the Set:', 'Toasted Tortilla Wrap with Beef'),
        Detail(
          '',
          'A hearty wrap packed with seasoned beef, crunchy tostada, fresh lettuce, tomatoes, cheese, and creamy sauce, all folded in a grilled tortilla for a satisfying bite.',
        ),
      ],
    ),

    Package(
      name: 'KICKIN Chicken',
      label: 'Ala Carte',
      price: 15.98,
      imageUrl: 'assets/kickin.jpg',
      category: MenuCategory.alaCarte,
      details: [
        Detail('In the Set:', 'Spicy Chicken Soft Tacos'),
        Detail(
          '',
          'Two soft tortillas filled with crispy, spicy chicken strips, shredded lettuce, cheese, and zesty sauce—perfect for spice lovers.',
        ),
      ],
    ),

    Package(
      name: 'Chicken Quesadilla',
      label: 'Ala Carte',
      price: 13.58,
      imageUrl: 'assets/quesadilla.jpg',
      category: MenuCategory.alaCarte,
      details: [
        Detail('In the Set:', 'Grilled Cheesy Chicken Slices'),
        Detail(
          '',
          'Grilled flour tortilla stuffed with seasoned chicken, melty cheese, and savory sauce, cut into wedges for easy sharing or solo munching',
        ),
      ],
    ),

    Package(
      name: 'BELL Bowl',
      label: 'Ala Carte',
      price: 12.50,
      imageUrl: 'assets/bellbowl.jpg',
      category: MenuCategory.alaCarte,
      details: [
        Detail('In the Set:', '1x Loaded Rice Bowl'),
        Detail(
          '',
          'A colorful and filling bowl of Mexican-style rice, black beans, shredded cheese, salsa, fresh lettuce, crispy tortilla chips, and your choice of meat or vegetarian protein',
        ),
      ],
    ),

    //SIDES
    Package(
      name: 'Nacho Fries',
      label: 'Sides',
      price: 9.04,
      imageUrl: 'assets/nachofries.jpg',
      category: MenuCategory.sides,
      details: [
        Detail('In the Set:', 'Crispy seasoned fries, 1x Cheese dip'),
        Detail(
          '',
          'Golden, crispy fries coated with zesty seasoning and served with a side of creamy nacho cheese sauce.',
        ),
      ],
    ),

    Package(
      name: 'Cheesy Nachos',
      label: 'Sides',
      price: 7.84,
      imageUrl: 'assets/cheesy.jpg',
      category: MenuCategory.sides,
      details: [
        Detail('In the Set:', 'Tortilla chips, 1x Cheese dip'),
        Detail(
          '',
          'Crisp tortilla chips paired with warm, velvety cheese sauce — the ultimate cheesy sidekick.',
        ),
      ],
    ),

    Package(
      name: 'Cinamon TWIEST',
      label: 'Sides',
      price: 4.90,
      imageUrl: 'assets/cinamon.jpg',
      category: MenuCategory.sides,
      details: [
        Detail('In the Set:', 'Sweet cinnamon twists'),
        Detail(
          '',
          'Light and crunchy twists dusted with cinnamon sugar — a sweet treat to finish your meal.',
        ),
      ],
    ),

    Package(
      name: 'CHOCODILLA',
      label: 'Sides',
      price: 6.90,
      imageUrl: 'assets/chocodilla.jpg',
      category: MenuCategory.sides,
      details: [
        Detail('In the Set:', 'Grilled chocolate quesadilla'),
        Detail(
          '',
          'A warm grilled tortilla stuffed with rich melted chocolate — a dessert twist with a satisfying crunch.',
        ),
      ],
    ),
  ];
}

class Detail {
  String title;
  String description;

  Detail(this.title, this.description);
}

enum MenuCategory { meal, alaCarte, sides }

String categoryToString(MenuCategory category) {
  switch (category) {
    case MenuCategory.meal:
      return 'Meal';
    case MenuCategory.alaCarte:
      return 'Ala Carte';
    case MenuCategory.sides:
      return 'Sides';
  }
}
