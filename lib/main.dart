import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appName = 'Custom Themes';
    return new MaterialApp(
      title: appName,
      theme: new ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.lightBlue[900],
      ),
      home: new GridView(),
    );
  }
}

class GridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Staggered GridView Example'),
          centerTitle: true,
        ),
        body: new Padding(
            padding: const EdgeInsets.only(top: 1.0),
            child: new StaggeredGridView.count(
              crossAxisCount: 4,
              staggeredTiles: _staggeredTiles,
              children: _tiles,
              mainAxisSpacing: 12.0,
              crossAxisSpacing: 12.0,
              padding: const EdgeInsets.all(25.0),
            )));
  }
}

class GridViewTile extends StatelessWidget {
  const GridViewTile(this.backgroundColor, this.iconData);

  final Color backgroundColor;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return new Card(
      color: backgroundColor,
      child: new InkWell(
        onTap: () {},
        child: new Center(
          child: new Padding(
            padding: const EdgeInsets.all(4.0),
            child: new Icon(
              iconData,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

List<StaggeredTile> _staggeredTiles = const <StaggeredTile>[
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
  const StaggeredTile.count(2, 2),
];

List<Widget> _tiles = const <Widget>[
  const GridViewTile(Colors.green, Icons.directions_car),
  const GridViewTile(Colors.lightBlue, Icons.directions_bike),
  const GridViewTile(Colors.amber, Icons.directions_transit),
  const GridViewTile(Colors.brown, Icons.map),
  const GridViewTile(Colors.deepOrange, Icons.send),
  const GridViewTile(Colors.indigo, Icons.airline_seat_flat),
  const GridViewTile(Colors.red, Icons.bluetooth),
  const GridViewTile(Colors.lightBlue, Icons.wifi),
];





