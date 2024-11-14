import 'package:flutter/material.dart';
import 'package:global_state_management/main.dart';
import 'package:global_state_management/provider/list_provider.dart';
import 'package:provider/provider.dart';

class AddListPage extends StatelessWidget {
  const AddListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Add Data Page"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            context.read<ListProvider>().addList({"name":"Roman Humagain", 'college':'PCPS College'});
          },
          child: Container(
            height: 50,
            width: 200,
            child: Center(
                child: Text(
              "Add Data To List",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20),
            )),
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(12)),
          ),
        ),
      ),
    );
  }
}
