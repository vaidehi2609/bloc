import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter_app/widgets/counter_widget.dart';
import 'package:counter_app/Bloc/counter_cubit.dart';
import 'package:counter_app/widgets/theme_widget.dart';

class Home extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CounterApp'),
        elevation: 0.0,
      ),
      body: Column(
        children: <Widget>[
          Counter(),
          SizedBox(height: 30,),
          ThemeWidget()

        ],
      ),

    );
  }
}
