import 'dart:math';

abstract class Shape{
  void calculateArea() ;

}

abstract class Drawable{
  void draw() ;

}

class Circle implements Shape, Drawable{
  double? radius ;

  Circle(this.radius) ;
  @override
  void calculateArea(){
    double sum = pi * radius! * radius! ;
    print('CalculateArea: ${sum.toStringAsFixed(2)}') ;
  }

  @override
  void draw(){
    print('Drawing Circle with radius: ${radius}') ;
  }
}

class Rectangle implements Shape, Drawable{
  double? width ;
  double? height ;

  Rectangle(this.width, this.height) ;

  @override
  void calculateArea(){
    double total = width! * height! ;
    print('Rectangle: $total') ;

  }

  void draw(){
    print('Drawing Rectangle with width: $width and height: $height') ;

  }
  }


void main(List<String> args) {
  var circle = Circle(5) ;
  var rec = Rectangle(10, 20) ;
  circle.draw() ;
  circle.calculateArea() ;
  rec.draw() ;
  rec.calculateArea() ;
  


}