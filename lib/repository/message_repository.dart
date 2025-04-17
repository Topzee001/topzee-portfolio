import 'package:my_portfolio/service/api_service.dart';

class ContactRepository {
  final ApiService api;

  ContactRepository(this.api);

  Future<bool> sendMessage(Map<String, dynamic> data) async {
    try {
      await api.sendMessage(data);
      return true;
    } catch (e) {
      return false;
    }
  }
}
