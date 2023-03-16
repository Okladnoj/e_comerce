import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../gen/assets.gen.dart';
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
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 4, 8, 8),
        child: Column(
          children: [
            Expanded(
              child: _buildIcon(),
            ),
            _buildTitle(context),
            _buildRatingScale(),
            Row(
              children: [
                _buildPrice(context),
                const Spacer(),
                _buildLikeStatus(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildIcon() {
    return Image.network(
      product.image,
      fit: BoxFit.contain,
      loadingBuilder: (_, child, loadingProgress) {
        final current = loadingProgress?.cumulativeBytesLoaded;
        final max = loadingProgress?.expectedTotalBytes;

        return Center(
          child: Builder(builder: (_) {
            if (current == null || max == null) {
              return child;
            }
            return CircularProgressIndicator(
              value: 1 - current / max,
            );
          }),
        );
      },
      errorBuilder: (context, error, stackTrace) {
        return SvgPicture.asset(
          Assets.svg.emptyIcon,
          height: 256,
        );
      },
    );
  }

  Widget _buildTitle(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            product.title,
            maxLines: 1,
            overflow: TextOverflow.fade,
            softWrap: false,
            style: context.textTheme.bodySmall,
          ),
        ),
        const SizedBox(width: 36)
      ],
    );
  }

  Widget _buildRatingScale() {
    final rating = product.rating.rate.round();

    return SizedBox(
      height: 5,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 5,
        separatorBuilder: (_, __) => const SizedBox(width: 2.4),
        itemBuilder: (_, index) {
          if (index < rating) return SvgPicture.asset(Assets.svg.rated);

          return SvgPicture.asset(Assets.svg.unRated);
        },
      ),
    );
  }

  Widget _buildPrice(BuildContext context) {
    return Text(
      '\$ ${product.price}',
      style: context.textTheme.bodySmall?.copyWith(
        fontWeight: FontWeight.w400,
      ),
    );
  }

  Widget _buildLikeStatus() {
    final liked = product.rating.rate > 4;
    return SvgPicture.asset(liked ? Assets.svg.liked : Assets.svg.unLiked);
  }
}
