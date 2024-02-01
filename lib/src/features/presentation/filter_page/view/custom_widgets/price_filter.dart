//import 'package:delivery_app/src/features/presentation/communs_widgets/hedear_title.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class PriceFilterRSlider extends StatefulWidget {
  const PriceFilterRSlider({super.key});

  @override
  State<PriceFilterRSlider> createState() => _PriceFilterRSliderState();
}

class _PriceFilterRSliderState extends State<PriceFilterRSlider> {
  SfRangeValues _currentRangeValues = const SfRangeValues(50.0, 1500.0);
  late int valueStart;
  late int valueEnd;
  @override
  void initState() {
    valueStart = _currentRangeValues.start.round();
    valueEnd = _currentRangeValues.end.round();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SfRangeSliderTheme(
      data: SfRangeSliderThemeData(
        tooltipBackgroundColor: Colors.transparent,
        tooltipTextStyle: Theme.of(context)
            .textTheme
            .titleSmall!
            .copyWith(color: Theme.of(context).disabledColor),
      ),
      child: SfRangeSlider(
        activeColor: Theme.of(context).colorScheme.onPrimary,
        inactiveColor: Theme.of(context).disabledColor,
        values: _currentRangeValues,
        min: 50.0,
        max: 5000.0,
        // showTicks: true,
        // showLabels: true,
        // showDividers: true,
        tooltipShape: const SfRectangularTooltipShape(),
        shouldAlwaysShowTooltip: true,
        tooltipTextFormatterCallback:
            (dynamic actualValue, String formattedText) {
          return '\$ $formattedText';
        },
        minorTicksPerInterval: 4,
        onChanged: (value) {
          setState(() {
            _currentRangeValues = value;
          });
        },
      ),
    );
  }
}
