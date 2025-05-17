import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Qurbani Express')),
      body: Center(
        child: Container(
          height: 200,
          width: 300,

          // decoration: BoxDecoration(
          //   boxShadow: [
          //     BoxShadow(
          //       blurRadius: 10,
          //       color: Colors.grey.shade800,
          //       spreadRadius: 5.0,
          //     ),
          //   ],
          //   image: DecorationImage(
          //     image: AssetImage('assets/images/qurbani_express.png'),
          //     fit: BoxFit.cover,
          //   ),
          //   color: Colors.deepPurpleAccent,
          //   borderRadius: BorderRadius.circular(20),
          // ),
          child: Center(
            child: CachedNetworkImage(
              imageUrl:
                  'https://www.tbsnews.net/sites/default/files/styles/amp_metadata_content_image_min_696px_wide/public/images/2025/04/26/picture_1_16x9.png',
              placeholder:
                  (context, url) => Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          ),
        ),
      ),
    );
  }
}
