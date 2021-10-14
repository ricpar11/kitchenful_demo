import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

bool isMobile(BuildContext context) {
  final ResponsiveValue<bool> responsiveValue = ResponsiveValue(context,
      defaultValue: true,
      valueWhen: const [Condition.largerThan(name: TABLET, value: false)]);

  return responsiveValue.value!;
}
