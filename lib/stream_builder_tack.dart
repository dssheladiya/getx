import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StreamBuilderTack extends StatefulWidget {
  const StreamBuilderTack({Key? key}) : super(key: key);

  @override
  State<StreamBuilderTack> createState() => _StreamBuilderTackState();
}

class _StreamBuilderTackState extends State<StreamBuilderTack> {
  TextEditingController one = TextEditingController();
  List<String> text1 = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    height: 60,
                    width: 300,
                    child: TextField(
                      controller: one,
                      decoration: InputDecoration(
                          hintText: "Name",
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          )),
                    )),
                SizedBox(width: 18),
                InkResponse(
                  onTap: () {
                    setState(() {
                      text1.add(one.text);
                      one.clear();
                    });
                  },
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: text1.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 30,
                      width: double.infinity,
                      color: Colors.amberAccent.withAlpha(30),
                      margin: EdgeInsets.symmetric(vertical: 5),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          "${text1[index]}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  text1.clear();
                });
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15)),
              child: Text("CLEAR"),
            )
          ],
        ),
      ),
    );
  }
}
