import 'package:flutter/material.dart';
import '1.2_registrate_frame.dart';

class MainFrameCategory extends StatefulWidget {
  const MainFrameCategory({Key? key}) : super(key: key);

  @override
  _MainFrameCategory createState() => _MainFrameCategory();
}

class _MainFrameCategory extends State<MainFrameCategory> {
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
        ),
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
                  padding: const EdgeInsets.all(5),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Registrate(), // Переход к странице регистрации 1
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
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
                  padding: const EdgeInsets.all(5),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Registrate(), // Переход к странице регистрации 1
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
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
                  padding: const EdgeInsets.all(5),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Registrate(), // Переход к странице регистрации 1
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
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
                  padding: const EdgeInsets.all(5),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Registrate(), // Переход к странице регистрации 1
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
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
                  padding: const EdgeInsets.all(5),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Registrate(), // Переход к странице регистрации 1
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
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
                  padding: const EdgeInsets.all(5),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Registrate(), // Переход к странице регистрации 1
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
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
                  padding: const EdgeInsets.all(5),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Registrate(), // Переход к странице регистрации 1
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
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
                  padding: const EdgeInsets.all(5),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Registrate(), // Переход к странице регистрации 1
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
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
                  padding: const EdgeInsets.all(5),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Registrate(), // Переход к странице регистрации 1
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
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
                  padding: const EdgeInsets.all(5),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Registrate(), // Переход к странице регистрации 1
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
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
                  padding: const EdgeInsets.all(5),
                  child: Center(
                      child: Material(
                          child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const Registrate(), // Переход к странице регистрации 1
                                  ),
                                );
                              },
                              child: Column(
                                children: [
                                  Expanded(
                                      child: Container(
                                          decoration: BoxDecoration(
                                            image: const DecorationImage(
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
                  margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('HolyMoly',
                        style: TextStyle(color: Colors.white)),
                  ))
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
          Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadiusDirectional.circular(20),
                  border: Border.all(
                    color: const Color.fromRGBO(227, 231, 244, 1),
                    width: 3,
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
        ]),
      ))),
    );
  }
}
