import 'package:flutter/material.dart';
import 'categories/1.6_service_frame.dart';
import 'profile/client/1.5.1_client_profile.dart';
import 'profile/client/1.6.9_get_feedback.dart';

// 1.5 Фрейм главного экрана с категориями услуг
class MainFrameCategory extends StatefulWidget {
  const MainFrameCategory({Key? key}) : super(key: key);

  @override
  _MainFrameCategoryState createState() => _MainFrameCategoryState();
}

final List<Widget> _navBarItems = [];

class _MainFrameCategoryState extends State<MainFrameCategory> {
  int _selectedTab = 0;
  // Функция выбора элемента по нажатию в панели навигации
  void onSelectTab(int index) {
    setState(() {
      if (_selectedTab == index) return;
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Функция заголовка
        automaticallyImplyLeading: false,
        titleTextStyle: const TextStyle(
            color: Color.fromRGBO(16, 35, 100, 1),
            fontWeight: FontWeight.w500,
            fontSize: 18,
            fontFamily: 'Futura'),
        elevation: 0,
        centerTitle: true,
        title: const Text('Онлайн запись'),
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      ),
      body: SafeArea(
          child: Center(
              child: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Column(children: <Widget>[
          GridView.count(
            shrinkWrap: true,
            primary: false,
            padding: const EdgeInsets.all(10),
            childAspectRatio: 2 / 1.7,
            crossAxisCount: 2,
            crossAxisSpacing: 2,
            mainAxisSpacing: 1,
            children: <Widget>[
              Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ServiceFrame(
                                      titleCategory: 'Перманент',
                                      subCategory: 'SubCategory1',
                                    ), // Переход к фрейму 1.6_1
                                  ),
                                );
                              },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    'assets/icons/categories/1_permanent.png')),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  colors: [
                                                    Colors.black
                                                        .withOpacity(.7),
                                                    Colors.black.withOpacity(0),
                                                  ],
                                                  stops: const [0.2, 0.9],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Align(
                                                alignment: AlignmentDirectional
                                                    .bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 15),
                                                  child: Text(
                                                    'Перманент',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18,
                                                      fontFamily: 'Futura',
                                                    ),
                                                  ),
                                                ),
                                              ))))
                                ],
                              ))))),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ServiceFrame(
                                        titleCategory: 'Парикмахер',
                                        subCategory:
                                            'SubCategory2'), // Переход к фрейму 1.6_2
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    'assets/icons/categories/2_hairdresser.png')),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  colors: [
                                                    Colors.black
                                                        .withOpacity(.7),
                                                    Colors.black.withOpacity(0),
                                                  ],
                                                  stops: const [0.2, 0.9],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Align(
                                                alignment: AlignmentDirectional
                                                    .bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 15),
                                                  child: Text(
                                                    'Парикмахер',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18,
                                                      fontFamily: 'Futura',
                                                    ),
                                                  ),
                                                ),
                                              ))))
                                ],
                              ))))),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ServiceFrame(
                                        titleCategory: 'Косметолог',
                                        subCategory:
                                            'SubCategory3'), // Переход к фрейму 1.6_3
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    'assets/icons/categories/3_cosmetolog.png')),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  colors: [
                                                    Colors.black
                                                        .withOpacity(.7),
                                                    Colors.black.withOpacity(0),
                                                  ],
                                                  stops: const [0.2, 0.9],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Align(
                                                alignment: AlignmentDirectional
                                                    .bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 15),
                                                  child: Text(
                                                    'Косметолог',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18,
                                                      fontFamily: 'Futura',
                                                    ),
                                                  ),
                                                ),
                                              ))))
                                ],
                              ))))),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ServiceFrame(
                                        titleCategory: 'Ногтевой сервис',
                                        subCategory:
                                            'SubCategory4'), // Переход к фрейму 1.6_4
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    'assets/icons/categories/4_nails_service.png')),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  colors: [
                                                    Colors.black
                                                        .withOpacity(.7),
                                                    Colors.black.withOpacity(0),
                                                  ],
                                                  stops: const [0.2, 0.9],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Align(
                                                alignment: AlignmentDirectional
                                                    .bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 15),
                                                  child: Text(
                                                    'Ногтевой сервис',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18,
                                                      fontFamily: 'Futura',
                                                    ),
                                                  ),
                                                ),
                                              ))))
                                ],
                              ))))),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ServiceFrame(
                                        titleCategory: 'Визаж',
                                        subCategory:
                                            'SubCategory5'), // Переход к фрейму 1.6_5
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    'assets/icons/categories/5_makeup.png')),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  colors: [
                                                    Colors.black
                                                        .withOpacity(.7),
                                                    Colors.black.withOpacity(0),
                                                  ],
                                                  stops: const [0.2, 0.9],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Align(
                                                alignment: AlignmentDirectional
                                                    .bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 15),
                                                  child: Text(
                                                    'Визаж',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18,
                                                      fontFamily: 'Futura',
                                                    ),
                                                  ),
                                                ),
                                              ))))
                                ],
                              ))))),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ServiceFrame(
                                        titleCategory: 'Ресницы/брови',
                                        subCategory:
                                            'SubCategory6'), // Переход к фрейму 1.6_6
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    'assets/icons/categories/6_lashes_brows.png')),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  colors: [
                                                    Colors.black
                                                        .withOpacity(.7),
                                                    Colors.black.withOpacity(0),
                                                  ],
                                                  stops: const [0.2, 0.9],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Align(
                                                alignment: AlignmentDirectional
                                                    .bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 15),
                                                  child: Text(
                                                    'Ресницы/брови',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18,
                                                      fontFamily: 'Futura',
                                                    ),
                                                  ),
                                                ),
                                              ))))
                                ],
                              ))))),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ServiceFrame(
                                        titleCategory: 'Пирсинг',
                                        subCategory:
                                            'SubCategory7'), // Переход к фрейму 1.6_7
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    'assets/icons/categories/7_piercing.png')),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  colors: [
                                                    Colors.black
                                                        .withOpacity(.7),
                                                    Colors.black.withOpacity(0),
                                                  ],
                                                  stops: const [0.2, 0.9],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Align(
                                                alignment: AlignmentDirectional
                                                    .bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 15),
                                                  child: Text(
                                                    'Пирсинг',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18,
                                                      fontFamily: 'Futura',
                                                    ),
                                                  ),
                                                ),
                                              ))))
                                ],
                              ))))),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ServiceFrame(
                                        titleCategory: 'Эпиляция и депиляция',
                                        subCategory:
                                            'SubCategory8'), // Переход к фрейму 1.6_8
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    'assets/icons/categories/8_epilation.png')),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  colors: [
                                                    Colors.black
                                                        .withOpacity(.7),
                                                    Colors.black.withOpacity(0),
                                                  ],
                                                  stops: const [0.2, 0.9],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Align(
                                                alignment: AlignmentDirectional
                                                    .bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 15),
                                                  child: Text(
                                                    'Эпиляция и депиляция',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18,
                                                      fontFamily: 'Futura',
                                                    ),
                                                  ),
                                                ),
                                              ))))
                                ],
                              ))))),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ServiceFrame(
                                        titleCategory: 'Массаж',
                                        subCategory:
                                            'SubCategory9'), // Переход к фрейму 1.6_9
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    'assets/icons/categories/9_massage.png')),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  colors: [
                                                    Colors.black
                                                        .withOpacity(.7),
                                                    Colors.black.withOpacity(0),
                                                  ],
                                                  stops: const [0.2, 0.9],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Align(
                                                alignment: AlignmentDirectional
                                                    .bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 15),
                                                  child: Text(
                                                    'Массаж',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18,
                                                      fontFamily: 'Futura',
                                                    ),
                                                  ),
                                                ),
                                              ))))
                                ],
                              ))))),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ServiceFrame(
                                        titleCategory: 'Аппаратная',
                                        subCategory:
                                            'SubCategory10'), // Переход к фрейму 1.6_10
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    'assets/icons/categories/10_apparate.png')),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  colors: [
                                                    Colors.black
                                                        .withOpacity(.7),
                                                    Colors.black.withOpacity(0),
                                                  ],
                                                  stops: const [0.2, 0.9],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Align(
                                                alignment: AlignmentDirectional
                                                    .bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 15),
                                                  child: Text(
                                                    'Аппаратная',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18,
                                                      fontFamily: 'Futura',
                                                    ),
                                                  ),
                                                ),
                                              ))))
                                ],
                              ))))),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const ServiceFrame(
                                        titleCategory: 'Тату',
                                        subCategory:
                                            'SubCategory11'), // Переход к фрейму 1.6_11
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    'assets/icons/categories/11_tattoo.png')),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  colors: [
                                                    Colors.black
                                                        .withOpacity(.7),
                                                    Colors.black.withOpacity(0),
                                                  ],
                                                  stops: const [0.2, 0.9],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Align(
                                                alignment: AlignmentDirectional
                                                    .bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 15),
                                                  child: Text(
                                                    'Тату',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18,
                                                      fontFamily: 'Futura',
                                                    ),
                                                  ),
                                                ),
                                              ))))
                                ],
                              ))))),
              Container(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const UsualUserProfile(), // Тестовый переход к профилю 1.5.1
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
                                                fit: BoxFit.contain,
                                                image: AssetImage(
                                                    'assets/icons/arrow_test.png')),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                          child: Container(
                                              decoration: BoxDecoration(
                                                gradient: LinearGradient(
                                                  begin: Alignment.bottomRight,
                                                  colors: [
                                                    Colors.black
                                                        .withOpacity(.7),
                                                    Colors.black.withOpacity(0),
                                                  ],
                                                  stops: const [0.2, 0.9],
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                              child: const Align(
                                                alignment: AlignmentDirectional
                                                    .bottomCenter,
                                                child: Padding(
                                                  padding: EdgeInsets.only(
                                                      bottom: 15),
                                                  child: Text(
                                                    'TEST ROUTE',
                                                    style: TextStyle(
                                                      color: Color.fromRGBO(
                                                          255, 255, 255, 1),
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 18,
                                                      fontFamily: 'Futura',
                                                    ),
                                                  ),
                                                ),
                                              ))))
                                ],
                              ))))),
            ],
          ),
          const Center(
              child: Padding(
                  padding: EdgeInsets.all(10),
                  child: SizedBox(
                      width: 235,
                      height: 25,
                      child: Align(
                          alignment: AlignmentDirectional.center,
                          child: Text(
                            'Мои записи',
                            style: TextStyle(
                              color: Color.fromRGBO(16, 35, 100, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ))))),
          // Контейнер под данные записей на прием
          Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  border: Border.all(
                    color: const Color.fromRGBO(227, 231, 244, 1),
                    width: 2,
                  )),
              child: const SizedBox(
                  width: 355,
                  height: 287,
                  child: Align(
                      alignment: AlignmentDirectional.center,
                      child: Text(
                        'Здесть что-то будет',
                        style: TextStyle(
                          color: Color.fromRGBO(16, 35, 100, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      )))),
          const SizedBox(height: 10),
          // Контейнер под данные записей на прием
          Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  border: Border.all(
                    color: const Color.fromRGBO(227, 231, 244, 1),
                    width: 3,
                  )),
              child: SizedBox(
                  width: 355,
                  height: 287,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: AlignmentDirectional.bottomStart,
                        child: GestureDetector(
                          child: const Text('Оставить отзыв',
                              style: TextStyle(
                                color: Color.fromRGBO(68, 90, 165, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                              )),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const GetFeedback(), // Переход на страницу восстановления пароля
                              ),
                            );
                          },
                        )),
                  ))),
          const SizedBox(height: 10),
        ]),
      ))),
      // Панель навигации на странице клиента
      bottomNavigationBar: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          selectedItemColor: const Color.fromRGBO(29, 58, 161, 1),
          unselectedItemColor: const Color.fromRGBO(108, 130, 209, 1),
          // showSelectedLabels: true,
          showUnselectedLabels: true,
          selectedLabelStyle: const TextStyle(), //your text style
          unselectedLabelStyle: const TextStyle(),
          currentIndex: _selectedTab,
          items: const [
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/online_entry.png")),
              label: 'Онлайн запись',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/bonus.png")),
              label: 'Бонусы',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/partners.png")),
              label: 'Партнеры',
            ),
            BottomNavigationBarItem(
              icon: ImageIcon(AssetImage("assets/icons/profile1.png")),
              label: 'Профиль',
            ),
          ],
          // Вызов функции по нажатию на элемент навигации
          onTap: onSelectTab,
        ),
      ),
    );
  }
}
