
import "dart:io";

List grocerys = [];
void main(){
  String running = ("yes");
  print("Welcome to the grocery store how can I help you.");
  do {
    print("To add an item to your cart press 1 \nTo see your current shopping list press 2 \nTo checkout press 3");
    int? action = int.tryParse(stdin.readLineSync()!);

    if (action == 1) {
      print("What would you like to add to your cart:");
      String item = stdin.readLineSync()!;
      additemToList(item);
    }
    if (action == 2){
      print("Shopping cart:");
      int number = 0;
      for (String item in grocerys){
        number++;
        print("$number.$item");
      }
      number = 0;
      print("To remove an item press 1 \nTo continue shopping press 2 \nTo checkout press 3");
      int? subaction = int.tryParse(stdin.readLineSync()!);
      if (subaction == 1) {
        print("What item would you like to remove;");
        String item = (stdin.readLineSync()!);
        removeitemFromList(item);
      }
      if (subaction == 3) {
        checkout();
      }
      else{

      }
    }
    if (action == 3){
      checkout();
      break;
    }
    
  } 
while (running.toLowerCase() == ("yes"));
}


void additemToList(String item){
  grocerys.add(item);
  print("$item has been added to your cart");
}

void removeitemFromList(String item){
  grocerys.remove(item);
  print("$item has been removed");
}

void checkout(){
  print("This is what you baught:");
      int number = 0;
      for (String item in grocerys){
        number++;
        print("$number.$item");
      }
}

