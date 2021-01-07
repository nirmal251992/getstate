import 'package:get/get.dart';

class Messages extends Translations {

  @override
  Map<String,Map<String,String>> get keys => {

   'en_US' : {
     'hello':'Hello', 'general':'General',
    },
    'hi_IN': {
     'hello': 'नमस्ते', 'general': 'आम',
    },
    'ar_SA': {
      'hello': 'مرحبا','general':'جنرال لواء',
    }
  };
}