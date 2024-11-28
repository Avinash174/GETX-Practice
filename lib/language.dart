import 'package:get/route_manager.dart';

class Language extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'message': 'what is your name',
          'name': 'Avinash Magar',
        },
        'ur_PK': {
          'message': 'آپ کا نام کیا ہے',
          'name': 'اویناش ماگر',
        }
      };
}
