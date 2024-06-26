import '../../constants/constants.dart';
import '../../di/di.dart';

mixin BaseMixin {
  final Px _dimens = inject<Px>();

  Px get dimens => _dimens;
}
