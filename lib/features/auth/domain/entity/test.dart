import 'package:equatable/equatable.dart';

class Testoo extends Equatable {
  String id;
  String number;

  Testoo(this.id, this.number);

  @override
  // TODO: implement props
  List<Object?> get props => [id];
}
