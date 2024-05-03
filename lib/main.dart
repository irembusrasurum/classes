

void main(){
  PersonelManager personelManager = new PersonelManager();
  //new illa yazmaya gerek yok.
  personelManager.add();
 var customerManager = CustomerManager();
 //1.customerManager.add("Irem", "Surum", 2004);
  Personel personel1 =Personel();
  personel1.firstName ="Hamza";
var customer1 = Customer.withInfo("İrem","Sürüm");
var customer2 = Customer();
 customer2.firstName = "Ecrin";
 customer2.lastName = "Sürüm";
  customerManager.add(customer2);

  var controller = PersonController();
  controller.operation(personel1);

}

class PersonController{
  void operation(Person person){
    print("Inheritance demo: "+ person.firstName);
  }
}

class PersonelManager{
  void add(){
    print("Eklendi.");
  }
   void update(){
    print("Güncellendi.");
  }
  void delete(){
    print("Silindi.");
  }
}
//class isimleri büyük fonksyonlar küçük harfle başlasın
//voidler operasyonlar
class CustomerManager{
  //void add(String firstName, String lastName, int dateOfBirth){
  void add(Customer customer){
  print("Eklendi : "+ customer.firstName );
  }
  void update(){
    print("Güncellendi.");
  }
  void delete(){
    print("Silindi.");
  }
}

class Customer extends Person{
 /* late String firstName;
  late String lastName;*/
  // late koymamızın sebebi biz oraya bi değer atayacağız ve flutterın null koymasını istemiyoruz

Customer(){

}
//Constructor(yapıcı) blok
  Customer.withInfo(String firstName, String lastName){
    this.firstName= firstName;
    this.lastName =lastName;
  }
}
class Personel extends Person{
  int dateOfStart= 0;
  //extends persondaki özellikleri içerdiğini belirtir.
 // int dateOfStart;
  // late koymamızın sebebi biz oraya bi değer atayacağız ve flutterın null koymasını istemiyoruz

  Personel(){

  }
//Constructor(yapıcı) blok
  Personel.withInfo(String firstName, String lastName, int dateOfStart){
    this.firstName= firstName;
    this.lastName =lastName;
    this.dateOfStart = dateOfStart;
  }
}

class Person{
  late String firstName;
  late String lastName;
  late String identityNumber;
}