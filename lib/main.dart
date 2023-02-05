import 'package:color_changer_bloc/blocs/color_bloc/color_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ColorBloc(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocBuilder<ColorBloc, ColorState>(
          builder: (context, state) {
            return Container(
              color: state.color,
              child: FloatingActionButton(onPressed: () {
                context.read<ColorBloc>().add(ChangeColorEvent());
              },),
            );
          },
        ),
      ),
    );
  }
}
