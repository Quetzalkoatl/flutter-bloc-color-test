part of 'color_bloc.dart';

class ColorState extends Equatable {
  final Color color;
  final int numb;

  const ColorState({required this.color, required this.numb});

  factory ColorState.initialState() => ColorState(color: Colors.primaries[5], numb: 5);

  @override
  List<Object?> get props => [color, numb];

  ColorState copyWith({Color? color}) {
    return ColorState(color: color ?? this.color, numb: numb);
  }
}
