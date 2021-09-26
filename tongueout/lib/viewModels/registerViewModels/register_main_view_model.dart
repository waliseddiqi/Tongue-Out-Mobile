import 'package:stacked/stacked.dart';

class RegisterMainViewModel extends BaseViewModel{

  int _currentIndex  = 0;
bool onEdit = false;

int  get getCurrentIndex => _currentIndex;


void setCurrentIndex(int value){
  _currentIndex = value;
  notifyListeners();
}

}