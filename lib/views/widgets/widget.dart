library widgets;

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
part 'progressbar_time.dart';
part 'small_button.dart';
part 'action_button.dart';

TextStyle kTextStyle(BuildContext context) => TextStyle(
      color: (MediaQuery.of(context).platformBrightness == Brightness.dark)
          ? CupertinoColors.white
          : CupertinoColors.black,
    );
