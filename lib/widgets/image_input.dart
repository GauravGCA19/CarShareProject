import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class ImageInput extends StatefulWidget {
  const ImageInput({Key? key}) : super(key: key);

  @override
  State<ImageInput> createState() => _ImageInputState();
}

class _ImageInputState extends State<ImageInput> {
  final ImagePicker imgpicker = ImagePicker();
  List<XFile>? imagefiles;

  openImages() async {
    try {
      var pickedfiles = await imgpicker.pickMultiImage();
      //you can use ImageCourse.camera for Camera capture
      if (pickedfiles != null) {
        imagefiles = pickedfiles;
        setState(() {});
      } else {
        print("No image is selected.");
      }
    } catch (e) {
      print("error while picking file.");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                openImages();
              },
              child: const Text(
                'Upload',
                style: TextStyle(color: Colors.white),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Theme.of(context).primaryColor),
                  padding: MaterialStateProperty.all(
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  ),
                  textStyle: MaterialStateProperty.all(
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5)))),
            ),
          ],
        ),

        //image preview
        SizedBox(
          height: 15,
        ),

        previewImages(),
      ],
    );
  }

  Widget previewImages() {
    if (imagefiles != null && imagefiles!.length <= 3) {
      return Wrap(
        children: imagefiles!.map((imageone) {
          return Container(
            // child: Card(
            //   child: Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
            ),
            child: Image.file(File(imageone.path)),
            // ),
            // ),
          );
        }).toList(),
      );
    } else {
      return Text(
        'No Image Uploaded/ select 3 or less images',
        style: TextStyle(fontSize: 20, color: Colors.grey[600]),
      );
    }
  }
}
