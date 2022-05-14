class User {
  User({
    required this.iduser,
    required this.nombre,
    required this.nic,
    required this.edad,
    required this.telefono,
    required this.foto,
    required this.idkeyrol,
    required this.status,
    required this.descripcion,
    required this.createdAt,
    required this.updatedAt,
  });
    int iduser;
    String nombre;
    String nic;
    String edad;
    String telefono;
    String foto;
    int idkeyrol;
    String status;
    String descripcion;
    String createdAt;
    String updatedAt;


    factory User.fromJson (Map<String, dynamic> json) => User(
    iduser: json["id_user"],
    nombre: json[ "nombre"].toString(),
    nic: json["nic"].toString(),
    edad: json[ "edad"].tostring(),
    telefono: json[ "telefono"].toString(),
    foto: json["foto"].toString(),
    idkeyrol: json["id_keyrol"],
    status: json["status"].toString(),
    descripcion: json["descripcion"].toString(),
    createdAt: json["created_at"].toString(),
    updatedAt: json["updated_at"].toString(),
    );
}



  //  required this.iduser,
  //   required this.nombre,
  //   required this.nik,
  //   required this.alamant,
  //   required this.telp,
  //   required this.foto,
  //   required this.idKeylompokTaki,
  //   required this.status,
  //   required this.namaKelompok,
  //   required this.createdAt,
  //   required this.updatedAt,