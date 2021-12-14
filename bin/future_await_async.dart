import 'dart:async';

void main(List<String> args) {
  print('main thread starts >>>>>');
  print('main process starts >>>>>');

  openImage();

  print('main process ends and starts counting seconds... >>>>>');
}

void openImage() async {
  var imageFile = await downloadImage();
  print('The downloaded file is --> $imageFile');
  print('main thread ends after 10 seconds....');
}

Future<String> downloadImage() {
  var image = Future<String>.delayed(Duration(seconds: 10), () {
    return 'Here is an imaginative image downloaded.';
  });
  return image;
}
