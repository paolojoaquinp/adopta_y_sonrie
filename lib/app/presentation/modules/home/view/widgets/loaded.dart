import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../bloc/home_bloc.dart';


class HomeLoaded extends StatelessWidget {
  const HomeLoaded({super.key});


  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = context.watch();
    final state = bloc.state;
    // retorna un widget pintando los animales tomando el estado del bloc
    return state.maybeWhen(
      loaded: (animals) {
        return ListView.builder(
          itemCount: animals.length,
          itemBuilder: (context, index) {
            final animal = animals[index];
            return ListTile(
              title: Text(animal.type ??'Este no tiene nombre por el momento.'),
              subtitle: Text(animal.description ??'Este no tiene descripción por el momento.'),
            );
          },
        );
      },
      orElse: () => const Text('nada',style: TextStyle(color: Colors.red),)
    );
  }
}