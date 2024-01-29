import 'package:flutter/material.dart';

class PriceFilterRSlider extends StatefulWidget {
  const PriceFilterRSlider({super.key});

  @override
  State<PriceFilterRSlider> createState() => _PriceFilterRSliderState();
}

class _PriceFilterRSliderState extends State<PriceFilterRSlider> {
  RangeValues _currentRangeValues = const RangeValues(0.2, 3.5);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [],
        ),
        RangeSlider(
          values: _currentRangeValues,
          max: 3500,
          min: 10,
          divisions: 15,
          activeColor: Theme.of(context).colorScheme.onPrimary,
          inactiveColor: Theme.of(context).disabledColor,
          labels: RangeLabels(
            _currentRangeValues.start.round().toString(),
            _currentRangeValues.end.round().toString(),
          ),
          onChanged: (RangeValues values) {
            setState(() {
              _currentRangeValues = values;
            });
          },
        ),
      ],
    );
  }
}
