import 'package:state_fong_1/src/bloc/main.dart' as bloc;
import 'package:state_fong_1/src/bloc_complex/main.dart' as bloc_complex;
import 'package:state_fong_1/src/bloc_start/main.dart' as bloc_start;
import 'package:state_fong_1/src/redux/main.dart' as redux;
import 'package:state_fong_1/src/scoped/complete.dart' as scoped;
import 'package:state_fong_1/src/singleton/main.dart' as singleton;
import 'package:state_fong_1/src/start/main.dart' as start;
import 'package:state_fong_1/src/start/main_blob.dart' as start_blob;
import 'package:state_fong_1/src/value_notifier/main.dart' as value_notifier;
import 'package:state_fong_1/src/vanilla/main.dart' as vanilla;

/// This rather unconventional main method allows us to switch to vastly
/// different implementations of the same app without confusing Flutter
/// and the IDE with many `main.dart` files in `lib/`.
///
/// All this main function does is run _another_ main function in one of
/// the imported files. When you're exploring a particular architecture,
/// just change the `flavor = ...` line below and (hot-)restart the app.
void main() {
  final flavor = Architecture.vanilla;

  print("\n\n===== Running: $flavor =====\n\n");

  switch (flavor) {
    case Architecture.start:
      start.main();
      return;
    case Architecture.startBlob:
      start_blob.main();
      return;
    case Architecture.singleton:
      singleton.main();
      return;
    case Architecture.vanilla:
      vanilla.main();
      return;
    case Architecture.valueNotifier:
      value_notifier.main();
      return;
    case Architecture.bloc:
      bloc.main();
      return;
    case Architecture.blocComplex:
      bloc_complex.main();
      return;
    case Architecture.blocStart:
      bloc_start.main();
      return;
    case Architecture.scoped:
      scoped.main();
      return;
    case Architecture.redux:
      redux.main();
      return;
  }
}

enum Architecture {
  bloc,
  blocComplex,
  blocStart,
  scoped,
  singleton,
  start,
  startBlob,
  vanilla,
  valueNotifier,
  redux,
}
