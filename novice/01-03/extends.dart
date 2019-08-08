class Shape {
  void cal_area() {
    print("calling calc area defined in the Shape class");
  }
}

class Circle extends Shape {
} // clas circle mewrisi fungsi cal_area yang ada di kelas shapee

void main() {
  var obj = new Circle(); // intasnsisi class circle
  obj.cal_area();
}
