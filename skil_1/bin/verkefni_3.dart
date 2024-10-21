
import 'dart:io';

class Typa {
  String eldsneyti;
  String tegund;


  Typa(this.eldsneyti, this.tegund);

  @override
  String toString() => "Týpa(Eldsneyti: $eldsneyti, Tegund: $tegund)";
}

class bill {
  final String nafn;
  final String model;
  final int argerd;
  final String litur;
  Typa eldsneyti; 
  Typa tegund;
  

  bill(this.nafn, this.model, this.argerd, this.litur, this.eldsneyti, this.tegund);

  @override
  String toString() => 'bill(Nafn: $nafn, Módel: $model, Árgerð: $argerd, Litur: $litur, Eldsneyti: $eldsneyti, Tegund: $tegund)';
}



void main(){
  List<bill> bilar = [
    bill("Land Rover", "Defender", 2020, "Svartur", "Bensín" as Typa, "Jeppi" as Typa ),
    bill("Land Rover", "Discovery", 2021, "Hvítur", "Dísel" as Typa, "Jeppi" as Typa),
    bill("Honda", "Accort", 2012, "Svartur", "Bensín" as Typa, "F+olksbíll" as Typa),
    bill("Honda", "Civic", 2000, "Rauður", "Bensín" as Typa, "Fólksbíll" as Typa),
    bill("Polestar", "2", 2023, "Grár", "Rafnmagn" as Typa, "Fólksbíll" as Typa),
    bill("Polestar", "3", 2024, "Brúnn", "Rafnmagn" as Typa, "Fólksbíll" as Typa),
    bill("Tesla", "3", 2024, "Blár", "Rafnmagn" as Typa, "Fólksbíll" as Typa),
    bill("Tesla", "Y", 2023, "Svartur",  "Rafnmagn" as Typa, "Fólksbíll" as Typa),
  ];
  print("Velkominn í Bílaölu Bubba");
  print("Hvernit bíl ertu að leita af?");
  String leit = stdin.readLineSync()!;

  for (bill tempbill in bilar) {
    if (tempbill == leit){
      print(tempbill);
      }
    
  }
}