abstract class Shape{
   int dim1 ;
   int dim2 ;

   Shape(this.dim1, this.dim2) ;
  //abstract method
   void area() ;

}

class Rectangle extends Shape{

  Rectangle(super.dim1, super.dim2) ;
  //Rectangle(int dim1, int dim2): super(dim1, dim2) ;
  //
  //area() => print('The area of the rectangle is ${super.dim1*super.dim2}') ;  
  void area(){
    int sum = dim1* dim2 ;
    print('The area of the Rectangle $sum') ;
    
  }
}

class Triangle extends Shape{

  Triangle(super.dim1, super.dim2) ;
  //Trianle(int dim1, int dim2): super(dim1, dim2);

  void area(){
    double sum = 1/2*(dim1 * dim2) ;
    print('The area of the Triangle $sum') ;
  }
}

void main(List<String> args) {
  var re = Rectangle(20, 10) ;
  var tri = Triangle(20, 10) ;

  re.area();
  tri.area();
}

