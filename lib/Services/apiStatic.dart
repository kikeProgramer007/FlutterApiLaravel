
import 'package:apilaravel/Models/user.dart';

class ApiStatic {
  static Future<List<User>> getUser() async {
     List<User> user = [];
    for (var i = 0; i < 10; i++) {
      user.add(
        User(
          iduser: i,nombre: "Nombre "+i.toString(),nic: "123"+i.toString(),edad: "123"+i.toString(),telefono: "123"+i.toString(),foto: "https://pbs.twimg.com/profile_images/1526882877/Logotipo_ICO_400x400.jpg",idkeyrol: 1,status: "Y",descripcion: "www",createdAt: "",updatedAt: ""
        )
      );
    }
    return user;
  }
}