import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

class PickImage extends StatelessWidget {
  PickImage({this.profilepic});
  XFile? profilepic;
  UploadProfile(XFile image) {
    profilepic = image;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 110,
      height: 110,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: Colors.purple, // Border color
          width: 3.0, // Border width
        ),
      ),
      child: CircleAvatar(
        backgroundColor: Colors.grey,
        backgroundImage: AssetImage('assets/images/person.jpg'),
        child: Stack(
          children: [
            Positioned(
                bottom: 1,
                right: 0.5,
                child: GestureDetector(
                  onTap: () async {},
                  child: Container(
                    height: 45,
                    width: 45,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        border: Border.all(color: Colors.white, width: 3),
                        borderRadius: BorderRadius.circular(20)),
                    child: GestureDetector(
                      onTap: () {
                        ImagePicker()
                            .pickImage(source: ImageSource.gallery)
                            .then((value) => null);
                      },
                      child: Icon(
                        Icons.camera_alt_sharp,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
