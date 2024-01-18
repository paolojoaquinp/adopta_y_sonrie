import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../domain/repositories/animals_repository.dart';
import '../bloc/search_bloc.dart';
import 'widgets/search_error.dart';
import 'widgets/search_loaded.dart';


class SearchView extends StatelessWidget {
  const SearchView({super.key});


  @override
  Widget build(BuildContext context) {
    final repository = context.read<AnimalsRepository>();
    return ChangeNotifierProvider(
      create: (_) => SearchBloc(animalsRepository: repository)..neutral(),
      builder: (context,_) {
        final SearchBloc bloc = context.watch();
        return Scaffold(
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  _searchBar(context),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.05),
                  Container(
                    child: bloc.state.map(
                      initial: (_) => const SizedBox(),
                      loading: (_) => const Center(child: CircularProgressIndicator()),
                      failed: (_) => const SearchError(),
                      loaded: (_) => const SearchLoaded(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }
    );
  }

  Widget _searchBar(BuildContext context) =>
    Hero(
      tag: 'searchBar',
      flightShuttleBuilder: (BuildContext flightContext,
          Animation<double> animation,
          HeroFlightDirection flightDirection,
          BuildContext fromHeroContext,
          BuildContext toHeroContext,){
        return SingleChildScrollView(
          child: fromHeroContext.widget,
        );
      },
      child: Material(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(20),
          ),
          child:  TextField(
            onSubmitted: (value) {
              if (value.isEmpty) return;
              context.read<SearchBloc>().init(value);
            },
            decoration: const InputDecoration(
              hintText: 'Buscar',
              border: InputBorder.none,
              prefixIcon: Icon(Icons.search),
              contentPadding: EdgeInsets.all(20),
            ),
          ),
        ),
      ),
    );
}