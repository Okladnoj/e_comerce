import 'package:flutter/material.dart';

import '../../../../models/product/product_response_model.dart';
import '../../../../themes/app_theme.dart';

class ProductCard extends StatelessWidget {
  final ProductResponseModel product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: context.colorScheme.surface,
        boxShadow: context.designs.shadowCard,
        borderRadius: BorderRadius.circular(11),
      ),
      child: Text(product.title),
    );
  }
}
