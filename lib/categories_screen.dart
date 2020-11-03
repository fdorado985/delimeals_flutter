import 'package:delimeals_flutter/category_item.dart';
import 'package:delimeals_flutter/dummy_data.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DeliMeal'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          mainAxisSpacing: 20,
        ),
        children: DUMMY_CATEGORIES
            .map((category) => CategoryItem(
                  category.title,
                  category.color,
                ))
            .toList(),
      ),
    );
  }
}
