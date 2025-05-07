import 'package:flutter/material.dart';
import 'packageDetail.dart'; // For accessing PackageDetail
import 'product.dart'; // For accessing the Package class and categoryToString function

class MealPage extends StatelessWidget {
  const MealPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mealPackages =
        Package.samples
            .where((package) => package.category == MenuCategory.meal)
            .toList();

    return Scaffold(
      appBar: AppBar(title: const Text('COMBOS MENU')),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.8,
        ),
        itemCount: mealPackages.length,
        itemBuilder: (context, index) {
          final package = mealPackages[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Packagedetail(package: package),
                ),
              );
            },
            child: buildProductCard(package),
          );
        },
      ),
    );
  }

  Widget buildProductCard(Package package) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: 116,
                width: double.infinity,
                child: Image.asset(package.imageUrl, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              package.name,
              style: const TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4.0),
            // Call categoryToString() from the common file to display the category name
            Text(
              categoryToString(package.category),
              style: const TextStyle(
                fontSize: 14.0,
                color: Color.fromARGB(255, 217, 154, 154),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
