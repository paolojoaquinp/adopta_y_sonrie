import 'package:adopta_y_sonrie/app/presentation/modules/search/view/search_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../bloc/search_bloc.dart';

class SearchLoaded extends StatelessWidget {
  const SearchLoaded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final SearchBloc bloc = context.watch();
    final state = bloc.state;
    return state.maybeWhen(
      loaded: (data,type) {
        return Expanded(
          child: Column(
            children: [
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
                              Image.network(animal.photos!.first.small ?? '',
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
                        ? () {
                          final link = data.pagination!.links!.next!.href!;
                          final parameterType = type ?? link.split('=').last;
                          context.read<SearchBloc>().loadNextPageByType(parameterType,data.pagination!.links!.previous!.href!);
                        } 
                        : null,
                      child: const Text('Anterior'),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.purple,
                        minimumSize: Size(MediaQuery.of(context).size.width * 0.40,46)
                      ),
                      onPressed: data.pagination!.links!.next != null 
                        ? () {
                          final link = data.pagination!.links!.next!.href!;
                          final parameterType = type ?? link.split('=').last;
                          context.read<SearchBloc>().loadNextPageByType(parameterType,data.pagination!.links!.next!.href!);
                        } 
                        : null,
                      child: const Text('Siguiente'),
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      },
      orElse: () => const Text('nada',style: TextStyle(color: Colors.red),)
    );
  }
}