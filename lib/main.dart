import 'package:counter_app/Bloc/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:counter_app/pages/home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (_) => ThemeCubit(),
        child: BlocBuilder<ThemeCubit,ThemeData>(
          builder: (_,theme){
            return MaterialApp(
                title: 'Flutter Demo',
                home: Home(),
              theme: theme,
            );
          }
        )

    );
  }
}