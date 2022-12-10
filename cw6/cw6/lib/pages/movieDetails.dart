import 'package:cw6/models/movies.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MovieDetails extends StatelessWidget {
  final Building movie;

  const MovieDetails({super.key, required this.movie});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Netflix"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(movie.image),
            Container(
              child: Text("${movie.name}"),
              margin: EdgeInsets.all(10),
            )
          ],
        ),
      ),
    );
  }
}
