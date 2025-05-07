import 'package:flutter/material.dart';
import 'mealPage.dart';
import 'alaCartePage.dart';
import 'sidePage.dart';

class MenuCategoryPage extends StatelessWidget {
  const MenuCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Select Category"),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CategoryButton(
              title: 'Combos',
              color: const Color.fromARGB(255, 168, 22, 53),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MealPage()),
                );
              },
            ),
            const SizedBox(height: 16),
            CategoryButton(
              title: 'Fan Favourites',
              color: const Color.fromARGB(255, 218, 81, 26),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AlaCartePage()),
                );
              },
            ),
            const SizedBox(height: 16),
            CategoryButton(
              title: 'Snacks',
              color: const Color.fromARGB(255, 228, 218, 22),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SidesPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onTap;

  const CategoryButton({
    super.key,
    required this.title,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: onTap,
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
