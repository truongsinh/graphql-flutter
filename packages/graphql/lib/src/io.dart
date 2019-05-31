import 'dart:async';
import 'dart:convert';
import 'dart:io' as io;

class Directory implements io.Directory {
  static Directory get systemTemp => null;

  @override
  // TODO: implement absolute
  io.Directory get absolute => null;

  @override
  Future<io.Directory> create({bool recursive = false}) {
    // TODO: implement create
    return null;
  }

  @override
  void createSync({bool recursive = false}) {
    // TODO: implement createSync
  }

  @override
  Future<io.Directory> createTemp([String prefix]) {
    // TODO: implement createTemp
    return null;
  }

  @override
  Directory createTempSync([String prefix]) {
    // TODO: implement createTempSync
    return null;
  }

  @override
  Future<io.FileSystemEntity> delete({bool recursive = false}) {
    // TODO: implement delete
    return null;
  }

  @override
  void deleteSync({bool recursive = false}) {
    // TODO: implement deleteSync
  }

  @override
  Future<bool> exists() {
    // TODO: implement exists
    return null;
  }

  @override
  bool existsSync() {
    // TODO: implement existsSync
    return null;
  }

  @override
  // TODO: implement isAbsolute
  bool get isAbsolute => null;

  @override
  Stream<io.FileSystemEntity> list(
      {bool recursive = false, bool followLinks = true}) {
    // TODO: implement list
    return null;
  }

  @override
  List<io.FileSystemEntity> listSync(
      {bool recursive = false, bool followLinks = true}) {
    // TODO: implement listSync
    return null;
  }

  @override
  // TODO: implement parent
  io.Directory get parent => null;

  @override
  // TODO: implement path
  String get path => null;

  @override
  Future<io.Directory> rename(String newPath) {
    // TODO: implement rename
    return null;
  }

  @override
  io.Directory renameSync(String newPath) {
    // TODO: implement renameSync
    return null;
  }

  @override
  Future<String> resolveSymbolicLinks() {
    // TODO: implement resolveSymbolicLinks
    return null;
  }

  @override
  String resolveSymbolicLinksSync() {
    // TODO: implement resolveSymbolicLinksSync
    return null;
  }

  @override
  Future<io.FileStat> stat() {
    // TODO: implement stat
    return null;
  }

  @override
  io.FileStat statSync() {
    // TODO: implement statSync
    return null;
  }

  @override
  // TODO: implement uri
  Uri get uri => null;

  @override
  Stream<io.FileSystemEvent> watch(
      {int events = io.FileSystemEvent.all, bool recursive = false}) {
    // TODO: implement watch
    return null;
  }
}

class File implements io.File {
  io.File _innerFile;

  File(String path) {
    _innerFile = io.File(path);
  }

  @override
  // TODO: implement absolute
  io.File get absolute => null;

  @override
  Future<io.File> copy(String newPath) {
    // TODO: implement copy
    return null;
  }

  @override
  io.File copySync(String newPath) {
    // TODO: implement copySync
    return null;
  }

  @override
  Future<io.File> create({bool recursive = false}) {
    // TODO: implement create
    return null;
  }

  @override
  void createSync({bool recursive = false}) {
    // TODO: implement createSync
  }

  @override
  Future<io.FileSystemEntity> delete({bool recursive = false}) {
    // TODO: implement delete
    return null;
  }

  @override
  void deleteSync({bool recursive = false}) {
    // TODO: implement deleteSync
  }

  @override
  Future<bool> exists() {
    // TODO: implement exists
    return null;
  }

  @override
  bool existsSync() {
    // TODO: implement existsSync
    return null;
  }

  @override
  // TODO: implement isAbsolute
  bool get isAbsolute => null;

  @override
  Future<DateTime> lastAccessed() {
    // TODO: implement lastAccessed
    return null;
  }

  @override
  DateTime lastAccessedSync() {
    // TODO: implement lastAccessedSync
    return null;
  }

  @override
  Future<DateTime> lastModified() {
    // TODO: implement lastModified
    return null;
  }

  @override
  DateTime lastModifiedSync() {
    // TODO: implement lastModifiedSync
    return null;
  }

  @override
  Future<int> length() {
    // TODO: implement length
    return null;
  }

  @override
  int lengthSync() {
    // TODO: implement lengthSync
    return null;
  }

  @override
  Future<io.RandomAccessFile> open({io.FileMode mode = io.FileMode.read}) {
    // TODO: implement open
    return null;
  }

  @override
  Stream<List<int>> openRead([int start, int end]) {
    // TODO: implement openRead
    return null;
  }

  @override
  io.RandomAccessFile openSync({io.FileMode mode = io.FileMode.read}) {
    // TODO: implement openSync
    return null;
  }

  @override
  io.IOSink openWrite(
      {io.FileMode mode = io.FileMode.write, Encoding encoding = utf8}) {
    // TODO: implement openWrite
    return null;
  }

  @override
  // TODO: implement parent
  io.Directory get parent => null;

  @override
  // TODO: implement path
  String get path => null;

  @override
  Future<List<int>> readAsBytes() {
    // TODO: implement readAsBytes
    return null;
  }

  @override
  List<int> readAsBytesSync() {
    // TODO: implement readAsBytesSync
    return null;
  }

  @override
  Future<List<String>> readAsLines({Encoding encoding = utf8}) {
    // TODO: implement readAsLines
    return null;
  }

  @override
  List<String> readAsLinesSync({Encoding encoding = utf8}) {
    // TODO: implement readAsLinesSync
    return null;
  }

  @override
  Future<String> readAsString({Encoding encoding = utf8}) {
    // TODO: implement readAsString
    return null;
  }

  @override
  String readAsStringSync({Encoding encoding = utf8}) {
    // TODO: implement readAsStringSync
    return null;
  }

  @override
  Future<io.File> rename(String newPath) {
    // TODO: implement rename
    return null;
  }

  @override
  io.File renameSync(String newPath) {
    // TODO: implement renameSync
    return null;
  }

  @override
  Future<String> resolveSymbolicLinks() {
    // TODO: implement resolveSymbolicLinks
    return null;
  }

  @override
  String resolveSymbolicLinksSync() {
    // TODO: implement resolveSymbolicLinksSync
    return null;
  }

  @override
  Future setLastAccessed(DateTime time) {
    // TODO: implement setLastAccessed
    return null;
  }

  @override
  void setLastAccessedSync(DateTime time) {
    // TODO: implement setLastAccessedSync
  }

  @override
  Future setLastModified(DateTime time) {
    // TODO: implement setLastModified
    return null;
  }

  @override
  void setLastModifiedSync(DateTime time) {
    // TODO: implement setLastModifiedSync
  }

  @override
  Future<io.FileStat> stat() {
    // TODO: implement stat
    return null;
  }

  @override
  io.FileStat statSync() {
    // TODO: implement statSync
    return null;
  }

  @override
  // TODO: implement uri
  Uri get uri => null;

  @override
  Stream<io.FileSystemEvent> watch(
      {int events = io.FileSystemEvent.all, bool recursive = false}) {
    // TODO: implement watch
    return null;
  }

  @override
  Future<io.File> writeAsBytes(List<int> bytes,
      {io.FileMode mode = io.FileMode.write, bool flush = false}) {
    // TODO: implement writeAsBytes
    return null;
  }

  @override
  void writeAsBytesSync(List<int> bytes,
      {io.FileMode mode = io.FileMode.write, bool flush = false}) {
    // TODO: implement writeAsBytesSync
  }

  @override
  Future<io.File> writeAsString(String contents,
      {io.FileMode mode = io.FileMode.write,
      Encoding encoding = utf8,
      bool flush = false}) {
    // TODO: implement writeAsString
    return null;
  }

  @override
  void writeAsStringSync(String contents,
      {io.FileMode mode = io.FileMode.write,
      Encoding encoding = utf8,
      bool flush = false}) {
    // TODO: implement writeAsStringSync
  }
}

class CompressionOptions {
  static const CompressionOptions compressionDefault =
      const CompressionOptions();

  CompressionOptions() {}
  @override
  // TODO: implement clientMaxWindowBits
  int get clientMaxWindowBits => null;

  @override
  // TODO: implement clientNoContextTakeover
  bool get clientNoContextTakeover => null;

  @override
  // TODO: implement enabled
  bool get enabled => null;

  @override
  // TODO: implement serverMaxWindowBits
  int get serverMaxWindowBits => null;

  @override
  // TODO: implement serverNoContextTakeover
  bool get serverNoContextTakeover => null;
}

class WebSocket {
  // TODO: implement addError
  static Future<WebSocket> connect(String url,
          {Iterable<String> protocols,
          Map<String, dynamic> headers,
          CompressionOptions compression:
              CompressionOptions.compressionDefault}) =>
      null;

  @override
  Duration pingInterval;

  @override
  void add(data) {
    // TODO: implement add
  }

  @override
  void addError(Object error, [StackTrace stackTrace]) {
    // TODO: implement addError
  }

  @override
  Future addStream(Stream stream) {
    // TODO: implement addStream
    return null;
  }

  @override
  void addUtf8Text(List<int> bytes) {
    // TODO: implement addUtf8Text
  }

  @override
  Stream asBroadcastStream(
      {void Function(StreamSubscription subscription) onListen,
      void Function(StreamSubscription subscription) onCancel}) {
    // TODO: implement asBroadcastStream
    return null;
  }

  @override
  Stream<R> cast<R>() {
    // TODO: implement cast
    return null;
  }

  @override
  Future close([int code, String reason]) {
    // TODO: implement close
    return null;
  }

  @override
  // TODO: implement closeCode
  int get closeCode => null;

  @override
  // TODO: implement closeReason
  String get closeReason => null;

  @override
  Future<bool> contains(Object needle) {
    // TODO: implement contains
    return null;
  }

  @override
  // TODO: implement done
  Future get done => null;

  @override
  Future<E> drain<E>([E futureValue]) {
    // TODO: implement drain
    return null;
  }

  @override
  Future elementAt(int index) {
    // TODO: implement elementAt
    return null;
  }

  @override
  // TODO: implement extensions
  String get extensions => null;

  @override
  // TODO: implement first
  Future get first => null;

  @override
  // TODO: implement isBroadcast
  bool get isBroadcast => null;

  @override
  // TODO: implement isEmpty
  Future<bool> get isEmpty => null;

  @override
  Future<String> join([String separator = ""]) {
    // TODO: implement join
    return null;
  }

  @override
  // TODO: implement last
  Future get last => null;

  @override
  Future pipe(StreamConsumer streamConsumer) {
    // TODO: implement pipe
    return null;
  }

  @override
  // TODO: implement protocol
  String get protocol => null;

  @override
  // TODO: implement readyState
  int get readyState => null;

  @override
  Stream skip(int count) {
    // TODO: implement skip
    return null;
  }

  @override
  Stream take(int count) {
    // TODO: implement take
    return null;
  }

  @override
  Stream timeout(Duration timeLimit,
      {void Function(EventSink sink) onTimeout}) {
    // TODO: implement timeout
    return null;
  }

  @override
  Future<List> toList() {
    // TODO: implement toList
    return null;
  }

  @override
  Future<Set> toSet() {
    // TODO: implement toSet
    return null;
  }
}

abstract class WebSocketStatus implements io.WebSocketStatus {
  static const int normalClosure = 1000;
  static const int goingAway = 1001;
  static const int protocolError = 1002;
  static const int unsupportedData = 1003;
  static const int reserved1004 = 1004;
  static const int noStatusReceived = 1005;
  static const int abnormalClosure = 1006;
  static const int invalidFramePayloadData = 1007;
  static const int policyViolation = 1008;
  static const int messageTooBig = 1009;
  static const int missingMandatoryExtension = 1010;
  static const int internalServerError = 1011;
  static const int reserved1015 = 1015;
}
