import 'package:flutter/material.dart';
import 'package:mobile_assignment_1/pages/packageDetail.dart';
import 'package:mobile_assignment_1/pages/product.dart'; // For accessing the Package class

class SidesPage extends StatelessWidget {
  const SidesPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Filter the packages for the "Sides" category
    final sidesPackages =
        Package.samples
            .where((package) => package.category == MenuCategory.sides)
            .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('SNACKS N SIDES'),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.8,
        ),
        itemCount:
            sidesPackages.length, // Display only filtered "Sides" packages
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder:
                      (context) => Packagedetail(package: sidesPackages[index]),
                ),
              );
            },
            child: buildProductCard(
              sidesPackages[index],
            ), // Pass filtered "Sides" package
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
                height: 120,
                width: double.infinity,
                child: Image.asset(package.imageUrl, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              package.name,
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4.0),
            Text(
              categoryToString(
                package.category,
              ), // Display category using switch
              style: const TextStyle(fontSize: 14.0, color: Color.fromARGB(255, 226, 208, 135)),
            ),
            const SizedBox(height: 4.0),
          ],
        ),
      ),
    );
  }
}