import 'package:flutter/material.dart';
import '1.7.2_contract.dart';
import '1.7.3_ support.dart';

// 1.6.2 Нажали кнопку "О сервисе" в профиле клиента
class ServiceInfoClick extends StatelessWidget {
  const ServiceInfoClick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        // Функция заголовка
        titleTextStyle: const TextStyle(
          color: Color.fromRGBO(16, 35, 100, 1),
          fontWeight: FontWeight.w500,
          fontSize: 18,
          fontFamily: 'Futura',
        ),
        elevation: 1,
        centerTitle: true,
        // Заголовок зависит от выбранной категории
        title: const Text(
          'О сервисе',
          style: TextStyle(
            fontFamily: 'Futura',
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(16, 35, 100, 1),
          ),
        ),
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
        iconTheme: const IconThemeData(
          color: Color.fromRGBO(108, 130, 209, 1),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 5, right: 5),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ClientAgreement(),
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        height: 48,
                        width: 355,
                        child: const Text(
                          'Договор',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(16, 35, 100, 1),
                          ),
                        ),
                      ),
                      const Icon(Icons.chevron_right_sharp),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Support(),
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        height: 48,
                        width: 355,
                        child: const Text(
                          'Написать в поддержку',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(16, 35, 100, 1),
                          ),
                        ),
                      ),
                      const Icon(Icons.chevron_right_sharp),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
