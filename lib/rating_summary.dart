library rating_summary;

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingSummary extends StatelessWidget {
  const RatingSummary({
    Key? key,
    required this.counter,
    this.average = 0.0,
    this.showAverage = true,
    this.counterFiveStars = 0,
    this.counterFourStars = 0,
    this.counterThreeStars = 0,
    this.counterTwoStars = 0,
    this.counterOneStars = 0,
    this.padding = const EdgeInsets.all(10.0),
    this.label = 'Ratings',
    this.labelStyle = const TextStyle(fontWeight: FontWeight.w600),
    this.averageStyle = const TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
    this.color = Colors.amber,
    this.secondaryColor = const Color(0xFFEEEEEE),
  }) : super(key: key);

  final int counter;
  final double average;
  final bool showAverage;
  final int counterFiveStars;
  final int counterFourStars;
  final int counterThreeStars;
  final int counterTwoStars;
  final int counterOneStars;
  final EdgeInsets padding;
  final String label;
  final TextStyle labelStyle;
  final TextStyle averageStyle;
  final Color color;
  final Color secondaryColor;

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
                _ReviewBar(
                  label: "5",
                  value: counterFiveStars / counter,
                  color: color,
                  secondaryColor: secondaryColor,
                ),
                _ReviewBar(
                  label: "4",
                  value: counterFourStars / counter,
                  color: color,
                  secondaryColor: secondaryColor,
                ),
                _ReviewBar(
                  label: "3",
                  value: counterThreeStars / counter,
                  color: color,
                  secondaryColor: secondaryColor,
                ),
                _ReviewBar(
                  label: "2",
                  value: counterTwoStars / counter,
                  color: color,
                  secondaryColor: secondaryColor,
                ),
                _ReviewBar(
                  label: "1",
                  value: counterOneStars / counter,
                  color: color,
                  secondaryColor: secondaryColor,
                ),
              ],
            ),
          ),
          if (showAverage) ...[
            const SizedBox(width: 30),
            Flexible(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(average.toStringAsFixed(1), style: averageStyle),
                  RatingBarIndicator(
                    rating: average,
                    itemSize: 28,
                    unratedColor: secondaryColor,
                    itemBuilder: (context, index) => Icon(Icons.star, color: color),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "$counter $label",
                    style: const TextStyle(fontWeight: FontWeight.w600),
                    overflow: TextOverflow.fade,
                  ),
                ],
              ),
            ),
          ],
        ],
      ),
    );
  }
}

class _ReviewBar extends StatelessWidget {
  const _ReviewBar({
    Key? key,
    required this.label,
    required this.value,
    this.color = Colors.amber,
    this.secondaryColor = const Color(0xFFEEEEEE),
  }) : super(key: key);

  final String label;
  final double value;
  final Color color;
  final Color secondaryColor;

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
                  backgroundColor: secondaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
