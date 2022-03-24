import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tormenta8/schema/canvas/home.dart';

// Providers are declared as globals to be watched.
final homeProvider = StateNotifierProvider<HomeNotifier, HomeSchema>((ref) {
  return HomeNotifier();
});

// The state notifier get it's state type from <T>.
class HomeNotifier extends StateNotifier<HomeSchema> {
  // The value inside this super constructor represets the state initial value.
  HomeNotifier() : super(HomeSchema(count: 0));

  // This state change tells the Flutter framework to rerun the build method
  // of any consumer widget so that the display can reflect the updated values.
  void increment() => state = state.copyWith(count: state.count + 1);
}

