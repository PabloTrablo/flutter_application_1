import 'package:flutter/material.dart';

// 1.7.2 Нажали пункт "Договор"
class ClientAgreement extends StatelessWidget {
  const ClientAgreement({Key? key}) : super(key: key);

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
        title: const Text(
          'Договор',
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
                    //   Navigator.push(
                    //       context,
                    //       MaterialPageRoute(
                    //         builder: (context) => const ClientContactDetails(), // Переход к договору
                    //       ));
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
                          'Скачать договор',
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
                const SizedBox(height: 550),
                const _ButtonWriteContract(),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

// Функция кнопка "Подписать договор"
class _ButtonWriteContract extends StatelessWidget {
  const _ButtonWriteContract({Key? key}) : super(key: key);

  get elevation => null;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(0),
        fixedSize: const MaterialStatePropertyAll(
          Size(355, 48),
        ),
        backgroundColor: const MaterialStatePropertyAll(
          Color.fromRGBO(186, 200, 249, 1),
        ),
        textStyle: const MaterialStatePropertyAll(
          TextStyle(fontSize: 16),
        ),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0))),
      ),
      child: const Text(
          style: TextStyle(
            fontFamily: 'Futura',
            fontWeight: FontWeight.w500,
            color: Color.fromRGBO(16, 35, 100, 1),
          ),
          'Подписать договор'),
      onPressed: () {
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) =>
        //         const *****(), // Переход к подписанию договора
        //   ),
        // );
      },
    );
  }
}
