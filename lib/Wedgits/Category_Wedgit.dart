import 'package:flutter/material.dart';

import '../Models/Category_Model.dart';

class categoryWedgit extends StatelessWidget {
  const categoryWedgit({
    super.key,
    required this.categoryModel,
  });
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, categoryModel.distination);
          },
          child: Container(
            height: 80,
            color: categoryModel.color,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                ),
                child: Text(
                  categoryModel.name,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
