import 'package:flutter/material.dart';
import 'packageDetail.dart'; // For accessing PackageDetail
import 'product.dart'; // For accessing the Package class

class AlaCartePage extends StatelessWidget {
  const AlaCartePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Filter the packages for Ala Carte category directly
    final alaCartePackages =
        Package.samples
            .where((package) => package.category == MenuCategory.alaCarte)
            .toList();

    return Scaffold(
      appBar: AppBar(title: const Text('FAN FAVOURITES PAGE')),
      body: GridView.builder(
        // Simplified GridView for displaying items
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          childAspectRatio: 0.8,
        ),
        itemCount: alaCartePackages.length,
        itemBuilder: (context, index) {
          final package = alaCartePackages[index];
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
            Text(
              categoryToString(package.category),
              style: const TextStyle(
                fontSize: 14.0,
                color: Color.fromARGB(255, 223, 170, 110),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
