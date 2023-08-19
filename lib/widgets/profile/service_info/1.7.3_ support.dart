import 'package:flutter/material.dart';

// 1.7.3 Нажали пункт "Написать в поддержку"
class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

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
          'О сервисе', // Возмоно больше пойдет заголовок "Обращение в поддержку" / "Поддержка"
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
      body: const SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 16),
              _HelloText(),
              SizedBox(height: 16),
              _TxtFieldErrRaport(),
              SizedBox(height: 420),
              _SendMessageSup(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

// Функция кнопка "Отправить сообщение" в поддержку
class _SendMessageSup extends StatelessWidget {
  const _SendMessageSup({Key? key}) : super(key: key);

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
          'Отправить сообщение'),
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

// Функция текст "Задайте пароль"
class _HelloText extends StatelessWidget {
  const _HelloText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Здравствуйте!',
      style: TextStyle(
        fontFamily: 'Futura',
        fontWeight: FontWeight.w500,
        fontSize: 18,
        color: Color.fromRGBO(123, 133, 167, 1),
      ),
    );
  }
}

class _TxtFieldErrRaport extends StatelessWidget {
  const _TxtFieldErrRaport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromRGBO(230, 235, 255, 1),
      ),
      child: const TextField(
        maxLines: null,
        decoration: InputDecoration(
          hintStyle: TextStyle(
            
            fontSize: 16,
            color: Color.fromRGBO(123, 133, 167, 1),
            fontFamily: 'Futura',
          ),
          hintText: 'Кратко опишите вашу проблему',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
        ),
      ),
    );
  }
}
