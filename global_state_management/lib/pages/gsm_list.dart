import 'package:flutter/material.dart';
import 'package:global_state_management/pages/add_list_page.dart';
import 'package:provider/provider.dart';
import '../provider/list_provider.dart';

class GsmList extends StatelessWidget {
  const GsmList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GSM List"),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.all(10),
            child: Consumer<ListProvider>(builder: (ctx, provider, _) {
              var allListData = provider.getList();
              return allListData.isNotEmpty
                  ? ListView.builder(
                      itemCount: allListData.length,
                      itemBuilder: (ctx, index) {
                        return ListTile(
                          title: Text(allListData[index]['name'].toString()),
                          subtitle:
                              Text(allListData[index]['college'].toString()),
                          trailing: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(Icons.edit, color: Colors.blue, size: 30,),
                              const SizedBox(width: 20,),
                              GestureDetector(
                                onTap: (){
                                  context.read<ListProvider>().removeData(index);
                                },
                                  child: const Icon(Icons.delete, color: Colors.red, size: 30,)),
                            ],
                          )
                          
                        );
                      })
                  : const Center(
                      child: Text("Data not Found !"),
                    );
            }),
          ),
          Positioned(
            bottom: 50,
            right: 30,
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddListPage()));
              },
              child: Container(
                height: 40,
                width: 100,
                child: Center(
                    child: Text(
                  "Add Data",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                )),
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(12)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
