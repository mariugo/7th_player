import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:seventh_player/core/data/local/data_storage_impl.dart';
import 'package:seventh_player/core/server/http_client_adapter.dart';

class Initialization {
  final sl = GetIt.instance;

  void setUpInstances() {
    sl.registerSingleton(HttpClientAdapter(client: http.Client()));
    sl.registerSingleton(DataStorageImpl());
  }
}
