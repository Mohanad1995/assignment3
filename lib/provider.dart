class Provider{
  static List<String> photos(){
    return List.generate(12,(index){
      return 'assets/img/unnamed.jpg';
    });
  }
}