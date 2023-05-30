import 'dart:io';

import 'package:cnpmapp/global_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class SetPhotoScreen extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _SetPhotoScreenState();
  }
}

class _SetPhotoScreenState extends ConsumerState<SetPhotoScreen> {
  File? _image;

  Future _pickImage(ImageSource source) async {
    try {
      final image = await ImagePicker().pickImage(source: source);
      if (image == null) return;
      File? img = File(image.path);
      //img = await _cropImage(imageFile: img);
      setState(() {
        _image = img;
        print(img);
        temp = _image;
        Navigator.pop(context);
      });
    } on PlatformException catch (e) {
      print(e);
      Navigator.pop(context);
    }
  }

  void _showModelBottomSheet(BuildContext context) {
    showModalBottomSheet(
        backgroundColor: Colors.blue,
        context: context,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(25.0),
          ),
        ),
        builder: (_) {
          return Container(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  color: Color.fromARGB(255, 108, 185, 249),
                  width: 380,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () async {
                      await _pickImage(ImageSource.camera);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/cameraa.png',
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Camera',
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 380,
                  height: 60,
                  child: ElevatedButton(
                    onPressed: () async {
                      await _pickImage(ImageSource.gallery);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/gallery.png',
                          height: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Gallery',
                          style: TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  Future<File?> _cropImage({required File imageFile}) async {
    CroppedFile? croppedImage =
        await ImageCropper().cropImage(sourcePath: imageFile.path);
    if (croppedImage == null) return null;
    return File(croppedImage.path);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 160,
      onPressed: () async {
        //await _pickImage(ImageSource.camera);
        //ref.read(stringPhoto.state).state = imageString;
        _showModelBottomSheet(context);
        ;
      },
      icon: _image == null
          ? Image.asset('assets/camera.png')
          : ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image(
                image: FileImage(_image!),
                fit: BoxFit.fill,
              ),
            ),
    );
  }
}
