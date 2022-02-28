import 'package:get/get.dart';

class Imagen extends GetxController {
  int x = 0;

  List imiages = [
    'https://cdn.pixabay.com/photo/2021/04/21/10/17/meme-6195988_960_720.png',
    'https://i0.wp.com/imagenesparapeques.com/wp-content/uploads/2021/01/Imagenes-PNG-de-among-us.png?fit=500%2C652&ssl=1',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFDKuhFW4Ai2-e9LJCSLtXG-4DpEwn-bMVMA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAqyWHL-HBl_z0wqaq68gQCmqNe6uuXSrfPg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1wmBGRN_cW2fEJ2Ma-AiGDxs5lzI2jrHmQw&usqp=CAU',
    'https://w0.peakpx.com/wallpaper/672/678/HD-wallpaper-full-of-amogus-sus-meme-among-us-dank-funny-sussy.jpg',
  ];

  void botonnext() {
    if (x < imiages.length - 1) {
      x++;
    } else {
      x = 0;
    }
    update();
  }

  void botonprev() {
    if (x == 0) {
      x = imiages.length - 1;
    } else {
      x--;
    }
    update();
  }
}
