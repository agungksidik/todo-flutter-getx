import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_app/app/data/utils/constants.dart';
import 'package:todo_app/app/modules/home/controllers/home_controller.dart';
import 'package:todo_app/app/modules/home/views/category.dart';
import 'package:todo_app/app/modules/home/views/floating_button.dart';
import 'package:todo_app/app/modules/home/views/loading_indicator.dart';
import 'package:todo_app/app/modules/home/views/side_menu.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final HomeController _controller = Get.put(HomeController());
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool isChecked = false;
  bool isChecked2 = false;
  bool checkedValue = false;
  bool checkedValue2 = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      key: _scaffoldKey,
      drawer: SideMenu(size: size),
      body: SafeArea(
        child: Stack(
          children: [
            ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25, vertical: 40),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          IconButton(
                              icon: Image.asset(
                                'assets/images/menu_icon.png',
                                width: 24,
                                height: 24,
                              ),
                              onPressed: () {
                                _scaffoldKey.currentState?.openDrawer();
                              }),
                          Spacer(),
                          Image.asset(
                            'assets/images/notif_icon.png',
                            width: 24,
                            height: 24,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'Categories',
                        style: blackTextStyle.copyWith(fontSize: 24),
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Container(
                        height: 170,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Category(
                              name: 'Work',
                              taskCount: ' Task',
                              image: 'assets/images/category_work.png',
                            ),
                            Category(
                              name: 'Personal',
                              taskCount: ' Task',
                              image: 'assets/images/category_personal.png',
                            ),
                            Category(
                              name: 'Other',
                              taskCount: ' Task',
                              image: 'assets/images/category_other.png',
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'On Going',
                            style: blackTextStyle.copyWith(fontSize: 24),
                          ),
                          Text(
                            'See all',
                            style: blackTextStyle.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      Obx(() {
                        return (_controller.todos.length == 0)
                            ? Text('Loading Data...')
                            : ListView.builder(
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: _controller.todos.length,
                                itemBuilder: (context, index) {
                                  return Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                          left: 40,
                                          right: 16,
                                        ),
                                        margin: EdgeInsets.only(bottom: 15),
                                        width: double.infinity,
                                        height: 75,
                                        decoration: BoxDecoration(
                                          gradient: new LinearGradient(
                                              colors: [
                                                Color(0xFFF8F8F8),
                                                (_controller.todos[index]
                                                            .category ==
                                                        'Personal')
                                                    ? Color(0xFF28B5B5)
                                                    : (_controller.todos[index]
                                                                .category ==
                                                            'Work')
                                                        ? Color(0xFFFF9A8C)
                                                        : Color(0xFFC4C4C4),
                                              ],
                                              begin: const FractionalOffset(
                                                  0.0, 1.0),
                                              end: const FractionalOffset(
                                                  3.0, 0.0),
                                              stops: [0.0, 1.0],
                                              tileMode: TileMode.clamp),
                                          color: Color(0xFFE1E5EA),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: size.width * 0.6,
                                                  child: Text(
                                                    _controller
                                                        .todos[index].name,
                                                    style: GoogleFonts.poppins(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: (_controller
                                                                  .todos[index]
                                                                  .category ==
                                                              'Personal')
                                                          ? Color(0xFF28B5B5)
                                                          : (_controller
                                                                      .todos[
                                                                          index]
                                                                      .category ==
                                                                  'Work')
                                                              ? Color(
                                                                  0xFFFF9A8C)
                                                              : Color(
                                                                  0xFFC4C4C4),
                                                    ),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    maxLines: 2,
                                                  ),
                                                ),
                                                Text(
                                                  _controller.todos[index].time,
                                                  style: greyTextStyle,
                                                ),
                                              ],
                                            ),
                                            Container(
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                    color: Color(0xFF28B5B5),
                                                    width: 1,
                                                  ),
                                                  borderRadius:
                                                      BorderRadius.all(
                                                    Radius.circular(20),
                                                  )),
                                              width: 24,
                                              height: 24,
                                              child: Theme(
                                                data: ThemeData(
                                                  unselectedWidgetColor:
                                                      Colors.transparent,
                                                ),
                                                child: Checkbox(
                                                  activeColor:
                                                      Colors.transparent,
                                                  checkColor: Color(0xFF28B5B5),
                                                  value: isChecked,
                                                  tristate: false,
                                                  onChanged: (value) {
                                                    setState(() {
                                                      isChecked = value;
                                                    });
                                                  },
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Image.asset(
                                        'assets/images/task_side.png',
                                        height: 75,
                                        color: (_controller
                                                    .todos[index].category ==
                                                'Personal')
                                            ? Color(0xFF28B5B5)
                                            : (_controller.todos[index]
                                                        .category ==
                                                    'Work')
                                                ? Color(0xFFFF9A8C)
                                                : Color(0xFFC4C4C4),
                                      )
                                    ],
                                  );
                                },
                              );
                      }),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Complete task',
                            style: blackTextStyle.copyWith(fontSize: 24),
                          ),
                          Text(
                            'See all',
                            style: blackTextStyle.copyWith(fontSize: 14),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 9,
                      ),
                      SizedBox(
                        height: 13,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Obx(
              () => _controller.isLoading.value
                  ? LoadingIndicator(size: size)
                  : Container(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingButton(size: size),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
