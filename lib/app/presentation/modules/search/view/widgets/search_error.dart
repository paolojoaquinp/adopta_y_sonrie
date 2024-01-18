import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

import '../../bloc/search_bloc.dart';

class SearchError extends StatelessWidget {
  const SearchError({super.key, /* required this.failure */});
  /* final HttpRequestFailure failure; */

  @override
  Widget build(BuildContext context) {
    final SearchBloc bloc = context.watch();
    final state = bloc.state;

    return state.maybeWhen(
      failed: (failure) {
        final message = failure.whenOrNull(
          network: () => 'Check your Internet connection',
          server: () => 'Server error',
        );
        if (message == null) {
          return const SizedBox();
        } 
        return Center(
          child: Text(message),
        );
      },
      orElse: () => const SizedBox()
    );
  }
}