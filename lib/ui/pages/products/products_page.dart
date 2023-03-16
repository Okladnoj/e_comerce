import 'package:auto_route/auto_route.dart';
import 'package:e_comerce/models/product/product_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../base/bloc/base_cubit.dart';
import '../../../bloc/products/products_cubit.dart';
import '../../../di/di.dart';
import '../../../l10n/localization_helper.dart';
import '../../../routes/router.dart';
import '../../../themes/app_theme.dart';
import '../../views/design/app_shader_mask.dart';
import '../../views/loaders/app_loader.dart';
import 'views/app_bar_products.dart';
import 'views/drawer_products.dart';
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
  ProductsCubit get _cubit => context.read();
  AppLocalizations get _strings => context.strings;
  ColorScheme get _colorScheme => context.colorScheme;
  TextTheme get _textTheme => context.textTheme;

  void _onMenuTap(BuildContext context) {
    Scaffold.of(context).openDrawer();
  }

  void _onLogOut() {
    context.router.replace(const AuthRoute());
  }

  Future<void> onRefreshProducts() async {
    await _cubit.refreshProducts();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: _colorScheme.surface,
          body: _buildContent(state),
          drawer: DrawerProducts(onLogOut: _onLogOut),
        );
      },
    );
  }

  Widget _buildContent(ProductsState state) {
    final error = state.status == StateStatus.error;

    if (error) return _buildError();

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarProducts(
            onMenuTap: _onMenuTap,
          ),
          Expanded(
            child: _buildScrollableContent(state),
          ),
        ],
      ),
    );
  }

  Widget _buildSpecialOffers() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        _strings.specialOffers,
        style: _textTheme.bodyLarge?.copyWith(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildBestPrices() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        _strings.bestPrices,
        style: _textTheme.bodySmall?.copyWith(
          fontWeight: FontWeight.w300,
        ),
      ),
    );
  }

  Widget _buildScrollableContent(ProductsState state) {
    final loading = state.status == StateStatus.loading;

    if (loading) return const Center(child: AppLoader());

    final products = state.products;

    if (products.isEmpty) return _buildNoProducts();

    return AppShaderMask(
      bottomHeight: 16,
      child: RefreshIndicator(
        onRefresh: onRefreshProducts,
        child: ListView(
          children: [
            const SizedBox(height: 24),
            _buildSpecialOffers(),
            _buildBestPrices(),
            const SizedBox(height: 16),
            _buildProducts(products),
          ],
        ),
      ),
    );
  }

  Widget _buildProducts(List<ProductResponseModel> products) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: products.length,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(26, 16, 26, 10),
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

  Widget _buildNoProducts() {
    return Center(
      child: Text(_strings.noProducts),
    );
  }
}
