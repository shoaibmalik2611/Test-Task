import 'package:get_it/get_it.dart';
import '../constants/constants.dart';

final inject = GetIt.instance;

Future<void> setupLocator() async {
  inject.registerLazySingleton<Px>(() => Px());
}
