import 'package:intl/intl.dart';

class FunctionalConst {
  Stream<String> getTimeStream() {
    return Stream<String>.periodic(const Duration(seconds: 1), (int _) {
      DateTime now = DateTime.now();

      String cTime = DateFormat("hh:mm").format(now);

      return cTime;
    });
  }
}
