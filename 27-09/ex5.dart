//interface
abstract class Game{

  int? level ;

  void start() ;
  void pause() ;
  void toContinue() ;
  void stop() ;
  void play() ;

}

abstract class Player{
  String? name ;

  int selectGame() ;
  bool isPlayer() ;
}

abstract class TictacToeAbst implements Game,Player{
  start() => print('TictacToeAbst: start()') ;
  pause() => print('TictacToeAbst: pause()') ;
  play() => print('TictacToeAbst: play()') ;  
  }
class Tictactoe extends TictacToeAbst{
  int? level ;
  String? name ;
  Tictactoe(this.level, this.name) ;
  stop() => print('Tictactoe: stop()') ;
  toContinue() => print('Tictactoe: toContinue()') ;
  int selectGame() => 2;
  bool isPlayer() => true ;


}

void main(List<String> args) {
  var tactoe = Tictactoe(5, 'tiktok') ;
  tactoe.start() ;
  tactoe.play() ;
  print('TacToe = ${tactoe.level}') ;
  print('select Game is ${tactoe.selectGame()}') ;
  print('TacToe is ${tactoe.name}') ;
  tactoe.pause() ;
  tactoe.stop() ;

}
