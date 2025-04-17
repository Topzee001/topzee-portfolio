import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:my_portfolio/repository/message_repository.dart';
import 'package:my_portfolio/service/api_service.dart';

final apiServiceProvider = Provider((ref) => ApiService());
final contactRepositoryProvider =
    Provider((ref) => ContactRepository(ref.watch(apiServiceProvider)));

final contactFormProvider =
    StateNotifierProvider<ContactFormNotifier, AsyncValue<bool>>((ref) {
  final repo = ref.watch(contactRepositoryProvider);
  return ContactFormNotifier(repo);
});

class ContactFormNotifier extends StateNotifier<AsyncValue<bool>> {
  final ContactRepository repo;

  ContactFormNotifier(this.repo) : super(const AsyncValue.data(false));

  Future<void> sendMessage(Map<String, dynamic> data) async {
    state = const AsyncValue.loading();
    try {
      final result = await repo.sendMessage(data);
      state = AsyncValue.data(result);
    } catch (e, st) {
      state = AsyncValue.error(e.toString(), st);
    }
  }
}
