import 'package:adopta_y_sonrie/app/presentation/modules/home/bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/repositories/animals_repository.dart';
import 'widgets/error.dart';
import 'widgets/loaded.dart';


class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with AutomaticKeepAliveClientMixin{



  @override
  Widget build(BuildContext context) {
    super.build(context);
    final repository = context.read<AnimalsRepository>();
    return ChangeNotifierProvider(
      create: (_) => HomeBloc(animalsRepository: repository)..init(),
      builder: (context,_) {
        final HomeBloc bloc = context.watch();
        return Container(
          child: bloc.state.map(
            loading: (_) => const Center(child: CircularProgressIndicator()),
            failed: (_) => const HomeError(),
            loaded: (_) => const HomeLoaded()
          ),
        );
      }
    );
  }
  
  @override
  bool get wantKeepAlive => true;
}