import 'package:counter_app/screen/counter/provider/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Counter App"),
          centerTitle: true,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40,),
            Center(
              child: Consumer<CounterProvider>(
                builder: (context, value, child) => Text(
                  "${value.i}",
                style: TextStyle(fontSize: 40),
                ),
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context,listen: false).increment();
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(width: 10,),
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context,listen: false).decrement();
                    },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context,listen: false).times2();
                    },
                  child: Text("X2"),
                ),
                SizedBox(width: 10,),
                FloatingActionButton(
                  onPressed: () {
                    Provider.of<CounterProvider>(context,listen: false).times3();
                    },
                    child: Text("X3"),
                ),
                SizedBox(width: 10,),
                FloatingActionButton(
                    onPressed: () {
                      Provider.of<CounterProvider>(context,listen: false).times4();
                      },
                    child: Text("X4"),
                ),
              ],
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}
