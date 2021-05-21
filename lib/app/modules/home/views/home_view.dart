import 'package:flutter/material.dart';
import 'package:todo_app/app/data/utils/constants.dart';
import 'package:todo_app/app/modules/widgets/popover.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
      drawer: Drawer(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: size.height,
                  width: size.width,
                  child: Image.asset(
                    'assets/images/sidemenu.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Column(
                    children: [
                      SizedBox(
                        height: 97,
                      ),
                      ClipOval(
                        child: Container(
                          padding: EdgeInsets.all(5),
                          color: Colors.white,
                          child: Image.asset(
                            'assets/images/foto_profile.png',
                            width: 98,
                            height: 98,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      Text(
                        'Agung Sidik M',
                        style: whiteTextStyle.copyWith(fontSize: 24),
                      ),
                      Text(
                        'Flutter Developer',
                        style: whiteTextStyle.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w100),
                      ),
                      SizedBox(
                        height: 36,
                      ),
                      ListMenu(
                        size: size,
                        name: 'Categories',
                        icon: 'icon_category.png',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListMenu(
                        size: size,
                        name: 'Analitycal',
                        icon: 'icon_analityc.png',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListMenu(
                        size: size,
                        name: 'History',
                        icon: 'icon_history.png',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListMenu(
                        size: size,
                        name: 'Account',
                        icon: 'icon_account.png',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
      body: ListView(
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
                        taskCount: '20 Task',
                        image: 'assets/images/category_work.png',
                      ),
                      Category(
                        name: 'Personal',
                        taskCount: '20 Task',
                        image: 'assets/images/category_personal.png',
                      ),
                      Category(
                        name: 'Other',
                        taskCount: '20 Task',
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
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 40, right: 16),
                      width: double.infinity,
                      height: 75,
                      decoration: BoxDecoration(
                        gradient: new LinearGradient(
                            colors: [
                              const Color(0xFFF8F8F8),
                              const Color(0xFF28B5B5),
                            ],
                            begin: const FractionalOffset(0.0, 1.0),
                            end: const FractionalOffset(3.0, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        color: Color(0xFFE1E5EA),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Training with student',
                                style: greenTextStyle,
                              ),
                              Text(
                                '15:00 AM',
                                style: greyTextStyle,
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: (checkedValue)
                                      ? Color(0xFF28B5B5)
                                      : Color(0xFFC4C4C4),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                )),
                            width: 24,
                            height: 24,
                            child: Theme(
                              data: ThemeData(
                                unselectedWidgetColor: Colors.transparent,
                              ),
                              child: Checkbox(
                                activeColor: Colors.transparent,
                                checkColor: Color(0xFF28B5B5),
                                value: isChecked,
                                tristate: false,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
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
                      color: Color(0xFF28B5B5),
                    )
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 40, right: 16),
                      width: double.infinity,
                      height: 75,
                      decoration: BoxDecoration(
                        gradient: new LinearGradient(
                            colors: [
                              const Color(0xFFF8F8F8),
                              const Color(0xFFFF9A8C),
                            ],
                            begin: const FractionalOffset(0.0, 1.0),
                            end: const FractionalOffset(3.0, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        color: Color(0xFFE1E5EA),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'FreeLance Design',
                                style: greenTextStyle,
                              ),
                              Text(
                                '16:00 PM',
                                style: greyTextStyle,
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: (checkedValue)
                                      ? Color(0xFF28B5B5)
                                      : Color(0xFFC4C4C4),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                )),
                            width: 24,
                            height: 24,
                            child: Theme(
                              data: ThemeData(
                                unselectedWidgetColor: Colors.transparent,
                              ),
                              child: Checkbox(
                                activeColor: Colors.transparent,
                                checkColor: Color(0xFFFF9A8C),
                                value: isChecked,
                                tristate: false,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
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
                      color: Color(0xFFFF9A8C),
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
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
                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 40, right: 16),
                      width: double.infinity,
                      height: 75,
                      decoration: BoxDecoration(
                        gradient: new LinearGradient(
                            colors: [
                              const Color(0xFFF8F8F8),
                              const Color(0xFFC4C4C4),
                            ],
                            begin: const FractionalOffset(0.0, 1.0),
                            end: const FractionalOffset(3.0, 0.0),
                            stops: [0.0, 1.0],
                            tileMode: TileMode.clamp),
                        color: Color(0xFFE1E5EA),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'FreeLance Design',
                                style: greenTextStyle,
                              ),
                              Text(
                                '16:00 PM',
                                style: greyTextStyle,
                              ),
                            ],
                          ),
                          Container(
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: (checkedValue2)
                                      ? Color(0xFF28B5B5)
                                      : Color(0xFFC4C4C4),
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                )),
                            width: 24,
                            height: 24,
                            child: Theme(
                              data: ThemeData(
                                unselectedWidgetColor: Colors.transparent,
                              ),
                              child: Checkbox(
                                activeColor: Colors.transparent,
                                checkColor: Color(0xFFC4C4C4),
                                value: isChecked2,
                                tristate: false,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked2 = value!;
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
                      color: Color(0xFFC4C4C4),
                    )
                  ],
                ),
                SizedBox(
                  height: 13,
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: SizedBox(
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
                            child: Container(
                              height: 50,
                              child: TextField(
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                  hintText: 'Input new task here',
                                  hintStyle: TextStyle(
                                    fontSize: 16,
                                    color: Color(0xFFA9A9A9),
                                  ),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide(
                                      width: 0,
                                      style: BorderStyle.none,
                                    ),
                                  ),
                                  filled: true,
                                  contentPadding: EdgeInsets.all(16),
                                  fillColor: Color(0xFFF8F8F8),
                                ),
                              ),
                            ),
                          ),
                        ],
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
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class ListMenu extends StatelessWidget {
  const ListMenu({
    Key? key,
    required this.size,
    required this.name,
    required this.icon,
  }) : super(key: key);

  final Size size;
  final String name;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 5),
      width: size.width,
      height: 55,
      decoration: BoxDecoration(
        color: Color(0xFF789FBC),
      ),
      child: Row(
        children: [
          Image.asset(
            'assets/images/' + icon,
            width: 20,
            height: 20,
            color: Color(0xFF8AB6D6),
          ),
          SizedBox(
            width: 27,
          ),
          Text(
            name,
            style: whiteTextStyle.copyWith(fontSize: 14),
          ),
          Spacer(),
          Image.asset(
            'assets/images/arrow.png',
            width: 9,
            height: 15,
            color: Color(0xFFFFFFFF),
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String name;
  final String taskCount;
  final String image;

  Category({
    required this.name,
    required this.taskCount,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right: 15),
          width: 128,
          height: 167,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Image.asset(
            image,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          padding: EdgeInsets.only(
            top: 24,
            left: 17,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: whiteTextStyle.copyWith(
                    fontSize: 14, fontWeight: FontWeight.normal),
              ),
              Text(
                taskCount,
                style: whiteTextStyle.copyWith(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
