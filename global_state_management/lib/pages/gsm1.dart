import 'package:flutter/material.dart';
import 'package:global_state_management/pages/gsm_list.dart';
import 'package:global_state_management/provider/couter_provider.dart';
import 'package:provider/provider.dart';

class Gsm1 extends StatelessWidget {
  const Gsm1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<CouterProvider>(builder: (ctx, _, __) {
              return Text(
                Provider.of<CouterProvider>(ctx, listen: true)
                    .getCount()
                    .toString(),
                style: TextStyle(fontSize: 60),
              );
            }),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.purple.shade200,

                    ),
                    child: IconButton(
                      onPressed: () {
                        Provider.of<CouterProvider>(context, listen: false)
                            .incrementCount();
                      },
                      icon: const Icon(
                        Icons.add,
                        size: 40,
                        color: Colors.white,
                      ),
                      color: Colors.green,
                    )),
                const SizedBox(
                  width: 40,
                ),
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.purple.shade200,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Provider.of<CouterProvider>(context, listen: false)
                            .decrementCount();
                      },
                      icon: const Icon(
                        Icons.remove,
                        size: 40,
                      ),
                      color: Colors.white,
                    )),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: const EdgeInsets.all(18.0),
              child: const Text(
                  "If you understand handling counter with the global state, go for List"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) =>
                          GsmList()));
                },
                child: Text("GSM List"))
          ],
        ),
      ),
    );
  }
}
