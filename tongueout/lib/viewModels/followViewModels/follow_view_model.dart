import 'package:stacked/stacked.dart';

class FollowViewModel extends BaseViewModel{

  int _currentIndex  = 0;

int  get getCurrentIndex => _currentIndex;


void setCurrentIndex(int value){
  _currentIndex = value;
  notifyListeners();
}



}