import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/1.4_registrate_step3.dart';

// Фрейм 1.3 "При нажатии Следующий шаг"

class RegistrateStp2 extends StatelessWidget {
  const RegistrateStp2({Key? key}) : super(key: key);
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
                _TextContactDetails(), //  Надпись "Контактные данные"
                SizedBox(height: 20),
                _EnterPhone(), //  Поле ввода - Телефон
                SizedBox(height: 10),
                _EnterMail(), //  Поле ввода - Почта
                SizedBox(height: 10),
                _EnterAdress(), //  Поле ввода - Адрес
                SizedBox(height: 10),
                SizedBox(height: 350),
                _ButtonLastStep2(), // Кнопка - Следующий шаг
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Функция-текст "Контактные данные"
class _TextContactDetails extends StatelessWidget {
  const _TextContactDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Контактные данные',
      style: TextStyle(
        fontFamily: 'Futura',
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: Color.fromRGBO(123, 133, 167, 1),
      ),
    );
  }
}

// Функция поле ввода телефона
class _EnterPhone extends StatelessWidget {
  const _EnterPhone({Key? key}) : super(key: key);

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
          hintText: 'Телефон',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
        ),
      ),
    );
  }
}

// Функция поле ввода электронной почты
class _EnterMail extends StatelessWidget {
  const _EnterMail({Key? key}) : super(key: key);

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
          hintText: 'Почта',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
        ),
      ),
    );
  }
}

// Функция поле ввода адреса
class _EnterAdress extends StatelessWidget {
  const _EnterAdress({Key? key}) : super(key: key);

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
          hintText: 'Адрес (по желанию)',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
        ),
      ),
    );
  }
}

// Функция кнопка "Следующий шаг" с переходом
class _ButtonLastStep2 extends StatelessWidget {
  const _ButtonLastStep2({Key? key}) : super(key: key);

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
          'Следующий шаг'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const RegistrateStp3(), // Переход к следующему этапу регистрации
          ),
        );
      },
    );
  }
}
