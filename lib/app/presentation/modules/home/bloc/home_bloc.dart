import 'package:flutter/widgets.dart';

import '../../../../domain/repositories/animals_repository.dart';
import 'home_state.dart';

class HomeBloc extends ChangeNotifier {
  HomeBloc({required this.animalsRepository});
  
  final AnimalsRepository animalsRepository;

  HomeState _state = HomeState.loading();

  HomeState get state => _state;

  Future<void> init() async {
    state.maybeWhen(
      loading: () {},
      orElse: () {
        _state = HomeState.loading();
        notifyListeners();
      },
    );
    final result = await animalsRepository.getAnimals('dog', 2);

    // 1
    result.when(left: (failure) {
      _state = HomeState.failed(failure);
    }, right: (animals) {
      _state = HomeState.loaded(animals: animals);
    });
    notifyListeners();
  }

}