import 'dart:async';

import 'package:cupertino_radio_choice/cupertino_radio_choice.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_app/app/data/models/TodoResponse.dart';
import 'package:todo_app/app/modules/home/controllers/home_controller.dart';
import 'package:todo_app/app/modules/widgets/text_field_input.dart';

import '../../../data/utils/constants.dart';
import '../../widgets/popover.dart';

class FloatingButton extends StatelessWidget {
  final HomeController _controller = Get.put(HomeController());
  final int index;

  FloatingButton({
    this.index,
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    String name = '';
    String category = '';
    String time = '';
    if (this.index != null) {
      name = _controller.todos[index].name;
    }

    final _formKey = GlobalKey<FormState>();

    TextEditingController nameController = TextEditingController(text: name);
    TextEditingController categoryController =
        TextEditingController(text: category);
    TextEditingController timeController = TextEditingController(text: time);

    return SizedBox(
      width: 78,
      height: 78,
      child: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet<void>(
            backgroundColor: Colors.transparent,
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return Popover(
                child: Container(
                  height: size.height * 0.4,
                  color: Colors.white,
                  child: Center(
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Text(
                            'Create New Task',
                            style: blackTextStyle.copyWith(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          ),
                          SizedBox(
                            height: 13,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: TextFieldInput(
                                hint: 'Input new task here',
                                autofocus: true,
                                controller: nameController),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25),
                            child: TextFieldInput(
                              hint: 'Input time here',
                              autofocus: false,
                              controller: timeController,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          CupertinoRadioChoice(
                            selectedColor: Color(0xFF28B5B5),
                            notSelectedColor: Color(0xFFC4C4C4),
                            choices: {
                              'Work': 'Work',
                              'Personal': 'Personal',
                              'Other': 'Other'
                            },
                            onChange: (selectCategory) {
                              categoryController.text = selectCategory;
                            },
                            initialKeyValue: 'Other',
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 25),
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            width: double.infinity,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState.validate()) {
                                  _controller.todos.add(TodoResponse(
                                      name: nameController.text,
                                      category: categoryController.text,
                                      time: timeController.text));
                                  Get.snackbar(
                                    'Task Berhasil di buat',
                                    'Create task success!',
                                    messageText: Container(
                                      child: Column(
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("name :"),
                                              Text("${nameController.text}"),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("category :"),
                                              Text(
                                                  "${categoryController.text}"),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text("time :"),
                                              Text("${timeController.text}"),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                  Timer(Duration(seconds: 3), () {
                                    Get.offAndToNamed("/home");
                                  });
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFF8AB6D6),
                                onPrimary: redColor,
                                shape: StadiumBorder(),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Create Task',
                                    style: blackTextStyle.copyWith(
                                      fontSize: 16,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        child: Image.asset(
          'assets/images/floating_button.png',
          width: 78,
          height: 78,
          fit: BoxFit.cover,
        ),
        backgroundColor: Color(0xFF8AB6D6),
      ),
    );
  }
}
