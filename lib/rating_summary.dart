library rating_summary;

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingSummary extends StatelessWidget {
  const RatingSummary({
    Key? key,
    required this.ratingCounter,
    this.ratingAverage = 0.0,
    this.ratingFiveStarsCounter = 0,
    this.ratingFourStarsCounter = 0,
    this.ratingThreeStarsCounter = 0,
    this.ratingTwoStarsCounter = 0,
    this.ratingOneStarsCounter = 0,
    this.padding = const EdgeInsets.all(10.0),
    this.ratingLabel = 'Ratings',
    this.ratingLabelStyle = const TextStyle(fontWeight: FontWeight.w600),
    this.ratingAverageStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
    this.color = Colors.amber,
  }) : super(key: key);

  final int ratingCounter;
  final double ratingAverage;
  final int ratingFiveStarsCounter;
  final int ratingFourStarsCounter;
  final int ratingThreeStarsCounter;
  final int ratingTwoStarsCounter;
  final int ratingOneStarsCounter;
  final EdgeInsets padding;
  final String ratingLabel;
  final TextStyle ratingLabelStyle;
  final TextStyle ratingAverageStyle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _ReviewBar(label: "5", value: ratingFiveStarsCounter / ratingCounter, color: color),
                _ReviewBar(label: "4", value: ratingFourStarsCounter / ratingCounter, color: color),
                _ReviewBar(label: "3", value: ratingThreeStarsCounter / ratingCounter, color: color),
                _ReviewBar(label: "2", value: ratingTwoStarsCounter / ratingCounter, color: color),
                _ReviewBar(label: "1", value: ratingOneStarsCounter / ratingCounter, color: color),
              ],
            ),
          ),
          const SizedBox(width: 30),
          Flexible(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(ratingAverage.toStringAsFixed(1), style: ratingAverageStyle),
                RatingBarIndicator(
                  rating: ratingAverage,
                  itemSize: 28,
                  unratedColor: Colors.grey.shade200,
                  itemBuilder: (context, index) => Icon(Icons.star, color: color),
                ),
                const SizedBox(height: 10),
                Text(
                  "$ratingCounter $ratingLabel",
                  style: const TextStyle(fontWeight: FontWeight.w600),
                  overflow: TextOverflow.fade,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _ReviewBar extends StatelessWidget {
  const _ReviewBar({Key? key, required this.label, required this.value, this.color = Colors.amber}) : super(key: key);
  final String label;
  final double value;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(label, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          const SizedBox(width: 20),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                height: 10,
                child: LinearProgressIndicator(
                  value: value,
                  valueColor: AlwaysStoppedAnimation<Color>(color),
                  backgroundColor: Colors.grey.shade200,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

