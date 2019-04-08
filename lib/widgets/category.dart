import 'package:flutter/material.dart';

import 'package:meta/meta.dart';

import 'package:unit_converter/models/models.dart';

final _rowHeight = 100.0;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Category extends StatelessWidget {

  final IconData iconLocation;
  final String name;
  final ColorSwatch color;
  final List<Unit> units;

  Category({
    Key key,
    @required this.iconLocation,
    @required this.color,
    @required this.units,
    @required this.name})
      : assert(iconLocation != null),
        assert(units != null),
        assert(color != null),
        assert(name != null),
        super(key: key);

  void _navigateToConverter(BuildContext context) {

  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        height: _rowHeight,
        child: InkWell(
          borderRadius: _borderRadius,
          highlightColor: color,
          splashColor: color,
          onTap: () => print('I was tapped!'),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    iconLocation,
                    size: 60.0,
                  ),
                ),
                Center(
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline,
                  ),
                )
              ],
            )
          ),
        ),
      ),
    );
  }
}
