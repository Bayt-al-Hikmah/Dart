void main() {
  Map<String, dynamic> person = {
    "name": "Alice",
    "age": 30,
    "city": "Paris"
  };

  print(person["name"]); 
  person["occupation"] = "Engineer"; 
  print(person.keys); 
  print(person.containsKey("age")); 

  person.addAll({"hobbies": ["reading", "coding"]}); 
  person.remove("city");
  print(person);
}