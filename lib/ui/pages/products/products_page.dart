import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../base/bloc/base_cubit.dart';
import '../../../bloc/products/products_cubit.dart';
import '../../../di/di.dart';
import '../../../l10n/localization_helper.dart';
import '../../views/loaders/app_loader.dart';
import 'views/product_card.dart';

class ProductsPage extends StatefulWidget with AutoRouteWrapper {
  const ProductsPage({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<ProductsCubit>(
      create: (_) => locator()..getProducts(),
      child: this,
    );
  }

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  AppLocalizations get _strings => context.strings;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return Scaffold(
          body: _buildContent(state),
        );
      },
    );
  }

  Widget _buildContent(ProductsState state) {
    final error = state.status == StateStatus.error;
    final loading = state.status == StateStatus.loading;

    if (error) return _buildError();

    if (loading) return const Center(child: AppLoader());

    final products = state.products;

    return GridView.builder(
      itemCount: products.length,
      padding: const EdgeInsets.fromLTRB(26, 0, 26, 10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.86,
      ),
      itemBuilder: (_, index) => ProductCard(product: products[index]),
    );
  }

  Widget _buildError() {
    return Center(
      child: Text(_strings.oops),
    );
  }
}
