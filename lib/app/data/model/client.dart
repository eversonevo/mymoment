class Client{

  Client({required this.idClient,
          required this.name,
          required this.phone});

  String idClient;
  String name;
  String phone;  


  Client copyWith({
    required String idClient,
    required String description,
    required String title,    
  }) => Client(
    idClient: idClient,
    name: name,
    phone: phone,    
  );


  factory Client.fromJson(Map<String,dynamic> json) => Client(
    name : json['name'],
    phone : json['phone'],    
    idClient: json['idClient'],
  );

  // envia firebase
  Map<String,dynamic> clienttoJson(){
    return {
      'idClient': this.idClient,
      'name': this.name,
      'phone': this.phone,
    };

  }


}