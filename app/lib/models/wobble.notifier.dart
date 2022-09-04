import 'package:app/models/workout.dart';
import 'package:flutter/widgets.dart';

import '../http/account.requests.dart';
import 'Account.dart';

class WobbleNotifier extends ChangeNotifier {
  Account? account;
  List<Workout>? workoutHistory;
  bool isLoading = false;

  WobbleNotifier();
  WobbleNotifier.account(this.account);

  void setAccount(String id) async {
    isLoading = true;
    account = await AccountRequests.getAccount(id);
    notifyListeners();
    isLoading = false;
  }
}