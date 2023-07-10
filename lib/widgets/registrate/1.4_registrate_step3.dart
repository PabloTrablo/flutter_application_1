import 'package:flutter/material.dart';
import '../1.5_main_online_entry.dart';

// Фрейм 1.4 "При нажатии Следующий шаг"

class RegistrateStp3 extends StatelessWidget {
  const RegistrateStp3({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // Функция заголовка
          titleTextStyle: const TextStyle(
            color: Color.fromRGBO(16, 35, 100, 1),
            fontWeight: FontWeight.w600,
            fontSize: 20,
            fontFamily: 'Futura',
          ),
          elevation: 0,
          centerTitle: true,
          title: const Text('Зарегистрироваться'),
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
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: const SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 50),
                _CreateNewPassText(), //  Надпись "Задайте пароль"
                SizedBox(height: 20),
                _CreatePass(), //  Поле ввода - Пароль
                SizedBox(height: 10),
                _VerifyPass(), //  Поле ввода - Подтвердите пароль
                SizedBox(height: 10),
                SizedBox(height: 410),
                _ButtonLastStep3(), // Кнопка Зарегистрироваться
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Функция текст "Задайте пароль"
class _CreateNewPassText extends StatelessWidget {
  const _CreateNewPassText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Задайте пароль',
      style: TextStyle(
        fontFamily: 'Futura',
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: Color.fromRGBO(123, 133, 167, 1),
      ),
    );
  }
}

// Функция поле ввода "Пароль"
class _CreatePass extends StatelessWidget {
  const _CreatePass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromRGBO(230, 235, 255, 1),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(123, 133, 167, 1),
            fontFamily: 'Futura',
          ),
          hintText: 'Пароль',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
        ),
      ),
    );
  }
}

// Функция поле ввода "Подтвердите пароль"
class _VerifyPass extends StatelessWidget {
  const _VerifyPass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromRGBO(230, 235, 255, 1),
      ),
      child: const TextField(
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(123, 133, 167, 1),
            fontFamily: 'Futura',
          ),
          hintText: 'Подтвердите пароль',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
        ),
      ),
    );
  }
}

// Функция кнопка "Зарегистрироваться" с переходом
class _ButtonLastStep3 extends StatelessWidget {
  const _ButtonLastStep3({Key? key}) : super(key: key);

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
          'Зарегистрироваться'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const MainFrameCategory(), // Переход в главное меню
          ),
        );
      },
    );
  }
}
