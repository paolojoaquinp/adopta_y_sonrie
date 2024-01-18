import 'package:flutter/widgets.dart';

import '../../../../domain/repositories/animals_repository.dart';
import 'search_state.dart';

class SearchBloc extends ChangeNotifier {
  SearchBloc({required this.animalsRepository});
  
  final AnimalsRepository animalsRepository;

  SearchState _state = SearchState.loading();

  SearchState get state => _state;


  void neutral() {
    _state = SearchState.initial();
    notifyListeners();
  }

  Future<void> init(String type) async {
    state.maybeWhen(
      loading: () {},
      orElse: () {
        _state = SearchState.loading();
        notifyListeners();
      },
    );
    final result = await animalsRepository.getAnimalsByType(type,1);

    // 1
    result.when(left: (failure) {
      _state = SearchState.failed(failure);
    }, right: (animals) {
      _state = SearchState.loaded(animals: animals, type: type);
    });
    notifyListeners();
  }

  Future<void> loadNextPage(String url) async {
    _state = SearchState.loading();
    notifyListeners();


    final result = await animalsRepository.getAnimalsNext(url);
    result.when(
      left: (failure) {
        _state = SearchState.failed(failure);
      },
      right: (animals) {
        _state = SearchState.loaded(animals: animals);
      },
    );
    notifyListeners();
  }



  Future<void> loadNextPageByType(String type,String url) async {
    _state = SearchState.loading();
    notifyListeners();


    final result = await animalsRepository.getAnimalsNextByType(type,url);
    result.when(
      left: (failure) {
        _state = SearchState.failed(failure);
      },
      right: (animals) {
        _state = SearchState.loaded(animals: animals);
      },
    );
    notifyListeners();
  }
}