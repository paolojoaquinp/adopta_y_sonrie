import 'package:adopta_y_sonrie/app/data/repositories_impl/user_auth_repository_impl.dart';
import 'package:adopta_y_sonrie/app/data/sources/user_preferences.dart';
import 'package:adopta_y_sonrie/app/presentation/modules/search/view/search_view.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../bloc/home_bloc.dart';

const noImageLink = 'https://previews.123rf.com/images/urfandadashov/urfandadashov1805/urfandadashov180500070/100957966-photo-not-available-icon-isolated-on-white-background-vector-illustration.jpg';

class HomeLoaded extends StatelessWidget {
  const HomeLoaded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeBloc bloc = context.watch();
    final state = bloc.state;
    return state.maybeWhen(
      loaded: (data) {
        return Stack(
          children: [
            Column(
              children: [
                _searchBar(context),
                Expanded(
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: data.animals!.length,
                    itemBuilder: (context, index) {
                      final animal = data.animals![index];
                      return Container(
                        height: MediaQuery.of(context).size.height * 0.5, // Set the height to 30% of the screen height
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            children: [
                              if(animal.photos!.isNotEmpty)
                                Image.network(animal.photos!.first.small ?? noImageLink ?? '',
                                  height: 150,
                                  width: 150,
                                  fit: BoxFit.cover,
                                ),
                              if(animal.photos!.isEmpty)
                                const Icon(Icons.image_not_supported, size: 150),
                              Text(animal.name ?? 'Este no tiene nombre por el momento.'),  
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          minimumSize: Size(MediaQuery.of(context).size.width * 0.40,46)
                        ),
                        onPressed: data.pagination!.links!.previous != null 
                          ? () => context.read<HomeBloc>().loadNextPage(data.pagination!.links!.previous!.href!) 
                          : null,
                        child: const Text('Anterior'),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.purple,
                          minimumSize: Size(MediaQuery.of(context).size.width * 0.40,46)
                        ),
                        onPressed: data.pagination!.links!.next != null 
                          ? () => context.read<HomeBloc>().loadNextPage(data.pagination!.links!.next!.href!) 
                          : null,
                        child: const Text('Siguiente'),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: FloatingActionButton(
                backgroundColor: Colors.purple,
                onPressed: () {
/*                   final prefs = UserPreferences();
                    prefs.deafultRoute = '/login';
                    final auth = UserAuthRepositoryImpl();
                    auth.signOut();
                    Navigator.pushNamed(context, '/login'); */
                  Navigator.pushNamed(context, '/location');
                },
                child: const Icon(Icons.location_on),
              ),
            ),
          ],
        );
      },
      orElse: () => const Text('nada',style: TextStyle(color: Colors.red),)
    );
  }

  Widget _searchBar(BuildContext context) {
    return Hero(
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
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              PageRouteBuilder(
                pageBuilder: (context, animation, secondaryAnimation) =>
                    const SearchView(),
                transitionsBuilder:
                    (context, animation, secondaryAnimation, child) {
                  var begin = Offset(1.0, 0.0);
                  var end = Offset.zero;
                  var curve = Curves.ease;

                  var tween = Tween(begin: begin, end: end)
                      .chain(CurveTween(curve: curve));

                  return FadeTransition(opacity: animation, child: child,);  
                },
              ),
            );
          },
          child: Container(
            height: 50,
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Icon(Icons.search),
                const SizedBox(width: 10),
                const Text('Buscar Por Raza'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}