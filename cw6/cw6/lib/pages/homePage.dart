import 'package:cw6/models/movies.dart';
import 'package:cw6/pages/movieDetails.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Buildings",
            style: TextStyle(fontSize: 30),
          ),
          backgroundColor: Colors.red,
        ),
        body: ListView.builder(
          itemCount: Building.movies.length,
          itemBuilder: ((context, index) {
            return Container(
              child: InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return MovieDetails(
                      movie: Building.movies[index],
                    );
                  })));
                },
                child: Card(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.network(
                      Building.movies[index].image,
                      height: 200,
                      width: 200,
                    ),
                    Text(Building.movies[index].name),
                    Container(
                      child: Text("->"),
                      decoration: BoxDecoration(color: Colors.red),
                      padding: EdgeInsets.all(10),
                    )
                  ],
                )),
              ),
            );
          }),
        ));
  }
}
