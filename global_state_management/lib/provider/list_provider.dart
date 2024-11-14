import 'package:flutter/material.dart';

class ListProvider extends ChangeNotifier{
  List<Map<String, dynamic>> _list = [];

  addList(Map<String, dynamic> data){
    _list.add(data);
    notifyListeners();
  }

  List<Map<String, dynamic>> getList(){
    return _list;
  }

  void removeData (int index){
    _list.removeAt(index);
    notifyListeners();
  }
}