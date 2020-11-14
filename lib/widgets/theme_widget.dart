import 'package:counter_app/Bloc/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ThemeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlatButton(
        child: Text('Change Theme'),
        onPressed: (){
          final theme = context.read<ThemeCubit>().state ;
          if(theme== ThemeData.light()){
            context.read<ThemeCubit>().dark();
          }
          else{
            context.read<ThemeCubit>().light();
          }
        },
      ),
    );
  }
}
