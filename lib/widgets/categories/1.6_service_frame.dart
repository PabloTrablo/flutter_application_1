import 'package:flutter/material.dart';

// Фрейм 1.6 "При выборе услуги"

class ServiceFrame extends StatelessWidget {
  final String titleCategory;
  final String subCategory;

  const ServiceFrame({
    Key? key,
    required this.titleCategory,
    required this.subCategory,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          // Функция заголовка
          titleTextStyle: const TextStyle(
            color: Color.fromRGBO(16, 35, 100, 1),
            fontWeight: FontWeight.w600,
            fontSize: 20,
            fontFamily: 'Futura',
          ),
          elevation: 1,
          centerTitle: true,
          // Заголовок зависит от выбранной категории
          title: Text(
            titleCategory,
            style: const TextStyle(
              fontFamily: 'Futura',
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(16, 35, 100, 1),
            ),
          ),
          backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
          iconTheme: const IconThemeData(
            color: Color.fromRGBO(108, 130, 209, 1),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
                Icons.arrow_back_outlined), // Кнопка-иконка вернуться назад
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const _Previousvisits(),
            //  const SizedBox(height: 10),
            SingleChildScrollView(
                padding: const EdgeInsets.only(left: 5, bottom: 10),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 140,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(227, 231, 244, 1),
                      ),
                      child: const Center(
                        child: Text('Master_x'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 140,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(227, 231, 244, 1),
                      ),
                      child: const Center(
                        child: Text('Master_y'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 140,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(227, 231, 244, 1),
                      ),
                      child: const Center(
                        child: Text('Master_z'),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(5),
                      width: 140,
                      height: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromRGBO(227, 231, 244, 1),
                      ),
                      child: const Center(
                        child: Text('Master_n'),
                      ),
                    ),
                  ],
                )),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 5, top: 5, right: 5),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        height: 48,
                        width: 355,
                        child: Text(
                          subCategory,
                          style: const TextStyle(
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(16, 35, 100, 1),
                          ),
                        ),
                      ),
                      const Icon(Icons.chevron_right_sharp),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Функция-текст "Вы ранее записывались"
class _Previousvisits extends StatelessWidget {
  const _Previousvisits({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: EdgeInsets.only(left: 10, top: 20, bottom: 15),
        child: Text(
          'Вы ранее записывались',
          style: TextStyle(
            fontFamily: 'Futura',
            fontWeight: FontWeight.w600,
            fontSize: 20,
            color: Color.fromRGBO(123, 133, 167, 1),
          ),
        ),
      ),
    );
  }
}




// Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Container(
          //       padding: const EdgeInsets.only(left: 10),
          //       height: 48,
          //       width: 355,
          //       child: const Text(
          //           style: TextStyle(
          //             fontFamily: 'Futura',
          //             fontWeight: FontWeight.w500,
          //             color: Color.fromRGBO(16, 35, 100, 1),
          //           ),
          //           'Sub_category_2'),
          //     ),
          //     const Icon(Icons.chevron_right_sharp),
          //   ],
          // ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     Container(
          //       padding: const EdgeInsets.only(left: 10),
          //       height: 48,
          //       width: 355,
          //       child: const Text(
          //           style: TextStyle(
          //             fontFamily: 'Futura',
          //             fontWeight: FontWeight.w500,
          //             color: Color.fromRGBO(16, 35, 100, 1),
          //           ),
          //           'Sub_category_3'),
          //     ),
          //     const Icon(Icons.chevron_right_sharp),
          //   ],
          // ),