
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:counter_app/Bloc/counter_cubit.dart';

class Counter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return BlocProvider(
      create: (_) => CounterCubit(),
      child: BlocBuilder<CounterCubit, int>(
        builder: (context, state) {
          return Container(
              child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                  children: <Widget>[
                    SizedBox(height: 30,),
                  Text('$state', style: TextStyle(
                fontSize: 30,
              )
                  ),

              SizedBox(height: 20.0,),
              Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    FloatingActionButton(
                      onPressed: () {
                        context.read<CounterCubit>().increment();
                      },
                      child: Icon(Icons.add),
                    ),
                    SizedBox(width: 20.0,),
                    FloatingActionButton(
                      onPressed: () {
                        context.read<CounterCubit>().decrement();
                      },
                      child: Icon(Icons.remove),
                    ),


                  ]
              )
              ]
              )
          );
    }
    )

    );



  }
}
