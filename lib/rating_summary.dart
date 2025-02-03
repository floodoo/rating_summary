/// Libary to display a summary of ratings.
///
/// This library is used to display statistics about ratings.
library rating_summary;

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

/// A widget that displays a summary of a rating.
///
/// Example:
///
/// ```dart
/// RatingSummary(
///   counter: 13,
///   average: 3.846,
///   counterFiveStars: 5,
///   counterFourStars: 4,
///   counterThreeStars: 2,
///   counterTwoStars: 1,
///   counterOneStars: 1,
/// )
/// ```

class RatingSummary extends StatelessWidget {
  const RatingSummary({
    Key? key,
    required this.counter,
    this.average = 0.0,
    this.showAverage = true,
    this.averageStyle = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 40,
    ),
    this.counterFiveStars = 0,
    this.counterFourStars = 0,
    this.counterThreeStars = 0,
    this.counterTwoStars = 0,
    this.counterOneStars = 0,
    this.labelCounterFiveStars = const Text(
      '5',
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    ),
    this.labelCounterFourStars = const Text(
      '4',
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    ),
    this.labelCounterThreeStars = const Text(
      '3',
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    ),
    this.labelCounterTwoStars = const Text(
      '2',
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    ),
    this.labelCounterOneStars = const Text(
      '1',
      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
    ),
    this.label = 'Ratings',
    this.labelStyle = const TextStyle(fontWeight: FontWeight.w600),
    this.color = Colors.amber,
    this.backgroundColor = const Color(0xFFEEEEEE),
    this.space = 20,
    this.thickness = 10,
    this.starColor = Colors.amber,
    this.alignment = CrossAxisAlignment.center,
  }) : super(key: key);

  /// The total number of ratings.
  ///
  /// This is the number of ratings that will be displayed in the [label].
  final int counter;

  /// The average rating.
  ///
  /// This is the average rating that will be displayed when [showAverage] is true.
  /// You can use the [averageStyle] to customize the look of the average rating.
  /// The default value is 0.0.
  /// This value will NOT be calculated from the given parameters.
  final double average;

  /// Whether to show the average rating.
  ///
  /// If true, the average rating will be displayed. If not specified, the default value is true.
  final bool showAverage;

  /// The style of the [average] rating.
  ///
  /// You can use this to customize the look of it.
  /// The default value is a bold font size of 40.
  final TextStyle averageStyle;

  /// The number of ratings with 5 stars.
  ///
  /// This is the number of ratings with 5 stars that will be displayed in the [_ReviewBar].
  /// The default value is 0.
  final int counterFiveStars;

  /// The number of ratings with 4 stars.
  ///
  /// This is the number of ratings with 4 stars that will be displayed in the [_ReviewBar].
  /// The default value is 0.
  final int counterFourStars;

  /// The number of ratings with 3 stars.
  ///
  /// This is the number of ratings with 3 stars that will be displayed in the [_ReviewBar].
  /// The default value is 0.
  final int counterThreeStars;

  /// The number of ratings with 2 stars.
  ///
  /// This is the number of ratings with 2 stars that will be displayed in the [_ReviewBar].
  /// The default value is 0.
  final int counterTwoStars;

  /// The number of ratings with 1 stars.
  ///
  /// This is the number of ratings with 1 stars that will be displayed in the [_ReviewBar].
  final int counterOneStars;

  /// The label of the [counterFiveStars].
  ///
  /// It will be displayed left of the [_ReviewBar] with 5 stars. The default value is '5'.
  final Widget labelCounterFiveStars;

  /// The label of the [counterFourStars].
  ///
  /// It will be displayed left of the [_ReviewBar] with 4 stars. The default value is '4'.
  final Widget labelCounterFourStars;

  /// The label of the [counterThreeStars].
  ///
  /// It will be displayed left of the [_ReviewBar] with 3 stars. The default value is '3'.
  final Widget labelCounterThreeStars;

  /// The label of the [counterTwoStars].
  ///
  /// It will be displayed left of the [_ReviewBar] with 2 stars. The default value is '2'.
  final Widget labelCounterTwoStars;

  /// The label of the [counterOneStars].
  ///
  /// It will be displayed left of the [_ReviewBar] with 1 stars. The default value is '1'.
  final Widget labelCounterOneStars;

  /// The label of the [counter]
  ///
  /// It will be displayed below the [average] counter with stars. It only appears when [showAverage] is true.
  final String label;

  /// The style of the [label].
  ///
  /// You can use this to customize the look of it. The default value is a semi-bold font.
  final TextStyle labelStyle;

  /// The color of the horizontal bar [_ReviewBar].
  ///
  /// The default value is Colors.amber.
  final Color color;

  /// The color of the unused stars and the background of the horizontal bar [_ReviewBar].
  ///
  /// The default value is Color(0xFFEEEEEE).
  final Color backgroundColor;

  /// The space between the label and the bar.
  ///
  /// The default value is 20.
  final double space;

  /// The thickness of the bar.
  ///
  /// The default value is 10.
  final double thickness;

  /// The color of stars.
  ///
  /// The default value is Colors.amber.
  final Color starColor;

  /// The alignment of rating summary.
  ///
  /// The default value is MainAxisAlignment.center.
  final CrossAxisAlignment alignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _ReviewBar(
                label: labelCounterFiveStars,
                value: counterFiveStars / counter,
                color: color,
                space: space,
                thickness: thickness,
                backgroundColor: backgroundColor,
              ),
              _ReviewBar(
                label: labelCounterFourStars,
                value: counterFourStars / counter,
                color: color,
                space: space,
                thickness: thickness,
                backgroundColor: backgroundColor,
              ),
              _ReviewBar(
                label: labelCounterThreeStars,
                value: counterThreeStars / counter,
                color: color,
                space: space,
                thickness: thickness,
                backgroundColor: backgroundColor,
              ),
              _ReviewBar(
                label: labelCounterTwoStars,
                value: counterTwoStars / counter,
                color: color,
                space: space,
                thickness: thickness,
                backgroundColor: backgroundColor,
              ),
              _ReviewBar(
                label: labelCounterOneStars,
                value: counterOneStars / counter,
                color: color,
                space: space,
                thickness: thickness,
                backgroundColor: backgroundColor,
              ),
            ],
          ),
        ),
        if (showAverage) ...[
          const SizedBox(width: 30),
          Flexible(
            child: Column(
              crossAxisAlignment: alignment,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(average.toStringAsFixed(1), style: averageStyle),
                RatingBarIndicator(
                  rating: average,
                  itemSize: 28,
                  unratedColor: backgroundColor,
                  itemBuilder: (context, index) {
                    return Icon(Icons.star, color: starColor);
                  },
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
    );
  }
}

/// A widget that displays a horizontal bar with a label.
///
/// Example:
/// ```dart
///  _ReviewBar(
///    label: "5",
///    value: counterFiveStars / counter,
///    color: color,
///    secondaryColor: secondaryColor,
///  )
/// ```
class _ReviewBar extends StatelessWidget {
  const _ReviewBar({
    Key? key,
    required this.label,
    required this.value,
    this.color = Colors.amber,
    this.space = 20,
    this.thickness = 10,
    this.backgroundColor = const Color(0xFFEEEEEE),
  }) : super(key: key);

  /// The label of the bar.
  ///
  /// It will be displayed on the left side of the bar.
  final Widget label;

  /// The progress value of the bar.
  ///
  /// It must be between 0.0 and 1.0.
  final double value;

  /// The color of the bar.
  ///
  /// The default value is Colors.amber.
  final Color color;

  /// The backgroundcolor of the bar.
  ///
  /// The default value is Color(0xFFEEEEEE).
  final Color backgroundColor;

  /// The space between the label and the bar.
  ///
  /// The default value is 20.
  final double space;

  /// The thickness of the bar.
  ///
  /// The default value is 10.
  final double thickness;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          label,
          SizedBox(width: space),
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: SizedBox(
                height: thickness,
                child: LinearProgressIndicator(
                  value: value.isFinite ? value : 0.0,
                  valueColor: AlwaysStoppedAnimation<Color>(color),
                  backgroundColor: backgroundColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
