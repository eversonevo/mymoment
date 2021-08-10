class Product{

  Product({required this.idProduct,
           required this.description,
           required this.title,
           required this.price});

  String idProduct;
  String description;
  String title;
  String price;


  Product copyWith({
    required String idProduct,
    required String description,
    required String title,
    required String price,
  }) => Product(
    idProduct: idProduct,
    description: description,
    title: title,
    price: price,
  );


  factory Product.fromJson(Map<String,dynamic> json) => Product(
    description : json['description'],
    title : json['title'],
    price : json['price'],
    idProduct: json['idProduct'],
  );

  // envia firebase
  Map<String,dynamic> producttoJson(){
    return {
      'idProduct': this.idProduct,
      'description': this.description,
      'title': this.title,
      'price': this.price,
    };

  }


}