import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Globals/globals.dart';

class add_page extends StatefulWidget {
  const add_page({Key? key}) : super(key: key);

  @override
  State<add_page> createState() => _add_pageState();
}

class _add_pageState extends State<add_page> {
  TimeOfDay? SelectTime;
  GlobalKey<FormState> datakey = GlobalKey<FormState>();

  String Selectime = "";
  String title = "";
  String thought = "";
  late int n;

  TextEditingController titleController = TextEditingController();
  TextEditingController thoughtController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Add Time",
          style: TextStyle(
              color: Colors.grey.shade900,
              fontWeight: FontWeight.w600,
              fontSize: 25),
        ),
        leading: IconButton(
          onPressed: () {
            setState(() {
              Navigator.of(context).pop("Homepage");
            });
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 420,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.grey)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "  Time",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w600,
                          fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 55,
                          width: 130,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.grey.shade200,
                              border: Border.all(color: Colors.grey.shade600)),
                          child: Row(
                            children: [
                              IconButton(
                                  onPressed: () async {
                                    SelectTime = await showTimePicker(
                                      context: context,
                                      initialTime: TimeOfDay.now(),
                                      builder: (context, child) {
                                        return TimePickerTheme(
                                            data: TimePickerThemeData(
                                              helpTextStyle: TextStyle(
                                                  fontSize: 15,
                                                  color: Color(0xffeaeef1)),
                                              dialHandColor: Colors.cyan,
                                              dialTextColor: Colors.black,
                                              backgroundColor: Colors.grey,
                                              hourMinuteColor: Colors.white,
                                              hourMinuteTextColor: Colors.grey,
                                              entryModeIconColor: Colors.white,
                                            ),
                                            child: child!);
                                      },
                                    );
                                    setState(() {});
                                  },
                                  icon: Icon(
                                    CupertinoIcons.clock_fill,
                                    color: Colors.black,
                                    size: 32,
                                  )),
                              SizedBox(
                                width: 5,
                              ),
                              (SelectTime != null)
                                  ? Text(
                                      "${SelectTime?.hour} : ${SelectTime?.minute}",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    )
                                  : Text(
                                      "${DateTime.now().hour} : ${DateTime.now().minute}",
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.grey,
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "  Title",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w600,
                          fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 60,
                            width: 360,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                              controller: titleController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade200,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    )),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    )),
                                border: InputBorder.none,
                                hintText: "Enter Title",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                              onSaved: (val) {
                                setState(() {
                                  title = val!;
                                });
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter title";
                                }
                                return null;
                              },
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "  Thought",
                      style: TextStyle(
                          color: Colors.grey.shade600,
                          fontWeight: FontWeight.w600,
                          fontSize: 25),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            height: 60,
                            width: 360,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: TextFormField(
                              textInputAction: TextInputAction.next,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                              controller: thoughtController,
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.grey.shade200,
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    )),
                                errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    )),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20),
                                    borderSide: BorderSide(
                                      color: Colors.grey,
                                    )),
                                border: InputBorder.none,
                                hintText: "Enter Thought",
                                hintStyle: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey,
                                ),
                              ),
                              onSaved: (val) {
                                setState(() {
                                  thought = val!;
                                });
                              },
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return "Please Enter Thought";
                                }
                                return null;
                              },
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: () async {
                  onTap:
                  () {
                    if (datakey.currentState!.validate()) {
                      datakey.currentState!.save();

                      Data c1 = Data(
                        title: title,
                        thought: thought,
                        SelectTime: Selectime,
                      );

                      setState(() {
                        Globals.data.add(c1);
                      });
                      Navigator.of(context).pushNamed('page', arguments: c1);
                    }
                  };
                },
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black),
                  child: Center(
                    child: Text(
                      "Mark My Thought",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
