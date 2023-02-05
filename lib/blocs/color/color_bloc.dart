import 'dart:math';

import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorState.initialState()) {
    on<ChangeColorEvent>(_changeColor);
  }
}

void _changeColor(ChangeColorEvent event, Emitter<ColorState> emit) {
  var randomNumber = Random().nextInt(Colors.primaries.length);
  var randomColor = Colors.primaries[randomNumber];
  emit(ColorState(color: randomColor, numb: randomNumber));
}
