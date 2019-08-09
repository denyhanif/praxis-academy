import 'dart:async';

void hello() async {
  print("esuatu yang menarik akan terjadi di sini ..");
}

class Employee {
  int id;
  String firstName;
  String lastName;

  Employee(this.id, this.firstName, this.lastName);
}

void main() async {
  //keywords asyncronus (modifier yang digunakan setiap menggunakan fungsi ansycronus)

  print("getting employee..");
  var x = await getEmployee(33);
  print("Got back ${x.firstName} ${x.lastName} with id# ${x.id}");
}

Future<Employee> getEmployee(int id) async {
  await Future<Employee>.delayed(const Duration(
      seconds:
          10)); // keyword yang digunakan untuk menunda funggsi yang akan di jalankan.

  var e = new Employee(id, 'joe', "coder");
  return e;
}
