import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_picker_ios/image_picker_ios.dart';

class ImagePickerDart extends StatefulWidget {
  const ImagePickerDart({super.key});

  @override
  State<ImagePickerDart> createState() => _ImagePickerDartState();
}

class _ImagePickerDartState extends State<ImagePickerDart> {
  ImagePicker _picker = ImagePicker();
  XFile? file;
  List<XFile>? files;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Image Picker')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey.shade300,
              child: Center(
                child:
                    file == null
                        ? Text("Image Not Picked")
                        : Image.file(File(file!.path), fit: BoxFit.cover),
              ),
            ),
            ElevatedButton(
              onPressed: () async {
                final XFile? photo = await _picker.pickImage(
                  source: ImageSource.gallery,
                );
                setState(() {
                  file = photo;
                });
                print("Image Picked");
                print(photo!.path);
              },
              child: Text('Picked Image'),
            ),

            ElevatedButton(
              onPressed: () async {
                final List<XFile>? photos = await _picker.pickMultiImage();

                setState(() {
                  files = photos;
                });
                print("Images Picked");
                for (int i = 0; i < files!.length; i++) {
                  print(files![i].path);
                }
              },
              child: Text('Picked Multiple Images'),
            ),
          ],
        ),
      ),
    );
  }
}
