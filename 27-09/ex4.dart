//interface mobifier
abstract class building{
  void draftBlueprint() ;
  void interior() ;
  void construct() ;
  
}

class House implements building{
  @override
  void construct() {
    print('House: construct()') ;
  }

  @override
  void draftBlueprint() {
    print('House: draftBlueprint()') ;
  }

  @override
  void interior() {
    print('House: interior()') ;
  }

}

void main(List<String> args) {
  var myhouse = House() ;
  myhouse.draftBlueprint() ;
  myhouse.construct() ;
  myhouse.interior() ; 
}