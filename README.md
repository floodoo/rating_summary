# Rating Summary Widget

Create a summary statistic Widget to display the rating and average rating of a product.

![Screenshot of the raring summary widget with the average rewiew indicator](https://raw.githubusercontent.com/floodoo/rating_summary/main/assets/readme/rating_summary_example_average.png)
![Screenshot of the raring summary widget without the average rewiew indicator](https://raw.githubusercontent.com/floodoo/rating_summary/main/assets/readme/rating_summary_example.png)

## Installing:

1. Add the dependency in your `pubspec.yaml` file.

```yaml
dependencies:
  rating_summary: ^1.0.0
```

2. Import the `rating_summary` package.

```dart
import 'package:rating_summary/rating_summary.dart';
```

## Usage

```dart
RatingSummary(
  counter: 13,
  average: 3.846,
  showAverage: true,
  counterFiveStars: 5,
  counterFourStars: 4,
  counterThreeStars: 2,
  counterTwoStars: 1,
  counterOneStars: 1,
)
```

### Parameters

| Parameter         | Description                                 | Type      | Default                                              | Required |
| ----------------- | ------------------------------------------- | --------- | ---------------------------------------------------- | -------- |
| counter           | The total number of ratings.                | int       | -                                                    | &#x2611; |
| average           | The average rating.                         | double    | 0.0                                                  | &#x2610; |
| showAverage       | Show the average rating indicator.          | bool      | true                                                 | &#x2610; |
| averageStyle      | The style of the average rating indicator.  | TextStyle | TextStyle(fontWeight: FontWeight.bold, fontSize: 40) | &#x2610; |
| counterFiveStars  | The number of 5 star ratings.               | int       | 0                                                    | &#x2610; |
| counterFourStars  | The number of 4 star ratings.               | int       | 0                                                    | &#x2610; |
| counterThreeStars | The number of 3 star ratings.               | int       | 0                                                    | &#x2610; |
| counterTwoStars   | The number of 2 star ratings.               | int       | 0                                                    | &#x2610; |
| counterOneStars   | The number of 1 star ratings.               | int       | 0                                                    | &#x2610; |
| label             | The label of the rating summary.            | String    | "Rating"                                             | &#x2610; |
| labelStyle        | The style of the label.                     | TextStyle | TextStyle(fontWeight: FontWeight.w600)               | &#x2610; |
| color             | The primary color of the rating summary.    | Color     | Colors.amber                                         | &#x2610; |
| backgroundColor   | The background color of the rating summary. | Color     | Color(0xFFEEEEEE)                                    | &#x2610; |
