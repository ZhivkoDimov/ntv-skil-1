
import 'dart:io';

class Type {
  String fuel;
  String size;

  Type(this.fuel, this.size);

  
  void displaytypa(){ 
    print("| Eldsneyti: ${this.fuel}");
    print("| Tegund: ${this.size}");
    
    }
}

class car {
  final String name;
  final String model;
  final int year;
  final String color;
  Type type; 
  
  car(this.name, this.model, this.year, this.color, this.type);

  
  void displaybill() {
    print("____________________________");
    print("| Name: ${this.name}");
    print("| Model: ${this.model}");
    print("| Year: ${this.year}");
    print("| Color: ${this.color}");
    print("| Fuel: ${this.type.fuel}");
    print("| Type: ${this.type.size}");
    print("____________________________");
  }
}



void main(){

  Type gastruck = Type("Gasoline", "Truck");
  Type dieseltruck = Type("Diesel", "Truck");
  Type gassedan = Type("Gasoline", "Sedan");
  Type dieselsedan = Type("Diesel", "Sedan");
  Type electricsedan = Type("Electric", "Sedan");
  Type electrictruck = Type("Electric", "Truck");

  List<car> cars = [
    car("Land Rover", "Defender", 2020, "Black", gastruck),
    car("Land Rover", "Discovery", 2021, "White", dieseltruck),
    car("Honda", "Accord", 2012, "Black", gassedan),
    car("Honda", "Civic", 2000, "Red", dieselsedan),
    car("Polestar", "2", 2023, "Grey", electricsedan),
    car("Polestar", "3", 2024, "Brown", electrictruck),
    car("Tesla", "3", 2024, "Blue", electricsedan),
    car("Tesla", "Y", 2023, "Black",  electricsedan),
  ];
  print("|------------------------------------|\n| Welcome to Bubba's car dealership! |\n|------------------------------------|");
  print("What kind of car are you lokking for? \nTo see all cars press '1' \nYou can search the following field's to narrow down your choice\n~Name~\n~Model~\n~Year~\n~Color~\n~Fuel type~\n~Car type~");
  String leit = "";
  while (leit.toLowerCase() != "quit") {
    String leit = stdin.readLineSync()!;

    for (car tempbill in cars) {
      if (leit == "1") {
        tempbill.displaybill();
      }
      if (tempbill.name.toLowerCase() == leit.toLowerCase() || tempbill.model.toLowerCase() == leit.toLowerCase() || tempbill.year.toString() == leit.toLowerCase() || tempbill.color.toLowerCase() == leit.toLowerCase() || tempbill.type.fuel.toLowerCase() == leit.toLowerCase() || tempbill.type.size.toLowerCase() == leit.toLowerCase()){
        tempbill.displaybill();
      }   
      }  
      if (leit == "quit") {
        print("Thank you for visiting.");
        break;
      }
      print("To see all cars press '1' \nYou can search the following field's to narrow down your choice\n~Name~\n~Model~\n~Year~\n~Color~\n~Fuel type~\n~Car type~");
   }
  }


