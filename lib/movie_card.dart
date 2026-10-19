import 'package:flutter/material.dart';

import 'movie.dart';

class MovieCard extends StatelessWidget {
  final Movie movie;
  final int discount;
  final VoidCallback onDiscountTap;
  final bool isGrid;

  const MovieCard({
    super.key,
    required this.movie,
    required this.discount,
    required this.onDiscountTap,
    this.isGrid = false,
  });

  static const Color gold = Color(0xFFD4AF62);
  static const Color cardColor = Color(0xFF19232D);
  static const Color burgundy = Color(0xFF702632);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: gold.withValues(alpha: 0.45), width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.35),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: isGrid ? buildGridCard() : buildlistCard(),
    );
  }

  Widget buildlistCard() {
    return Row(
      children: [
        SizedBox(width: 95, height: 135, child: buildPoster()),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: buildMovieInfo(),
          ),
        ),
      ],
    );
  }

  Widget buildGridCard() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            height: 170,
            child: buildPoster(),
          ),
        ),
        Padding(padding: const EdgeInsets.all(8), child: buildMovieInfo()),
      ],
    );
  }

  Widget buildPoster() {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          movie.image,
          fit: BoxFit.cover,
          errorBuilder: (context, error, StackTrace) {
            return const ColoredBox(
              color: cardColor,
              child: Center(
                child: Icon(Icons.auto_awesome, color: gold, size: 42),
              ),
            );
          },
        ),

        Positioned(
          top: 8,
          left: 8,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 9, vertical: 6),
            decoration: BoxDecoration(
              color: gold,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.3),
                  blurRadius: 5,
                ),
              ],
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.star, size: 14, color: Color(0xFF382B12)),
                const SizedBox(width: 3),
                Text(
                  movie.rating.toStringAsFixed(1),
                  style: const TextStyle(
                    color: Color(0xFF382B12),
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ),

        Positioned(
          top: 4,
          right: 4,
          child: IconButton(
            tooltip: 'Bookmark',
            onPressed: () {},
            icon: const Icon(
              Icons.bookmark_border,
              color: Colors.white,
              shadows: [Shadow(color: Colors.black87, blurRadius: 8)],
            ),
          ),
        ),
        Positioned(
          bottom: 8,
          left: 8,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            decoration: BoxDecoration(
              color: const Color(0xE6101820),
              border: Border.all(color: gold.withValues(alpha: 0.7)),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Text(
              '${movie.year}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 8,
          right: 8,
          child: GestureDetector(
            onTap: onDiscountTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              decoration: BoxDecoration(
                color: burgundy,
                border: Border.all(color: gold, width: 0.8),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                '$discount%',
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildMovieInfo() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          movie.title,
          maxLines: isGrid ? 3 : 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Color(0xFFF4E9CE),
            fontSize: 15,
            fontWeight: FontWeight.bold,
            height: 1.3,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Icon(Icons.auto_awesome, size: 15, color: gold),
            const SizedBox(width: 5),
            Flexible(
              child: Text(
                movie.genre,
                style: const TextStyle(color: Color(0XFFC1B7A4), fontSize: 13),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Container(
          width: 35,
          height: 2,
          decoration: BoxDecoration(
            color: gold,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
      ],
    );
  }
}
