import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:instagram/servis/servis.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      Padding(
        padding: const EdgeInsets.all(10),
        child: TextField(
          decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(0),
              constraints: const BoxConstraints.tightFor(height: 40),
              filled: true,
              fillColor: Colors.grey[300],
              prefixIcon: const Icon(Icons.search),
              hintText: 'Cari',
              border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(10))),
        ),
      ),
      Expanded(
          child: FutureBuilder(
        future: User().getData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container();
          }
          if (snapshot.hasError) {
            const Center(child: Text('eror'));
          }
          return StaggeredGridView.countBuilder(
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            crossAxisCount: 3,
            itemCount: snapshot.data!.hits!.length,
            itemBuilder: (context, index) {
              var imagePicture = snapshot.data!.hits![index].userImageUrl;
              return Image.network(
                (index == 15)
                    ? 'https://avatars.githubusercontent.com/u/119821427?v=4'
                    : imagePicture,
                fit: BoxFit.cover,
              );
            },
            staggeredTileBuilder: (index) {
              return (index % 9 == 0)
                  ? const StaggeredTile.count(1, 2)
                  : const StaggeredTile.count(1, 1);
            },
          );
        },
      )),
    ]));
  }
}
/* 
 
 */