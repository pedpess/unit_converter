import 'package:flutter/material.dart';

import 'package:meta/meta.dart';

import 'package:unit_converter/models/models.dart';

class Category {
  final IconData iconLocation;
  final String name;
  final ColorSwatch color;
  final List<Unit> units;

  Category(
      {@required this.iconLocation,
      @required this.color,
      @required this.units,
      @required this.name})
      : assert(iconLocation != null),
        assert(units != null),
        assert(color != null),
        assert(name != null);
}
