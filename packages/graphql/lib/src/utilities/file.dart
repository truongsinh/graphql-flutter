import 'dart:async';
import 'package:http/http.dart';

import './file_stub.dart'
    if (dart.library.html) './file_html.dart'
    if (dart.library.io) './file_io.dart';


FutureOr<MultipartFile> multipartFileFrom(/*io.File or html.File*/ f) => multipartFileFromImpl(f);
