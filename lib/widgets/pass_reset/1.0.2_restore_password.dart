import 'package:flutter/material.dart';
import '1.0.3_restore_pass_send.dart';

// 1.0.2 - При нажатии кнопки "Восстановить"

class RestorePass extends StatelessWidget {
  const RestorePass({Key? key}) : super(key: key);
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
          title: const Text('Восстановление пароля'),
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
                SizedBox(height: 56),
                _EnterYourRegistrateMail(), // Поле ввода Email для восстановления пароля
                SizedBox(height: 10),
                SizedBox(height: 500),
                _SentButton2(), // Кнопка "Отправить" и переход на след. фрейм
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Функция поля ввода для восстановления пароля
class _EnterYourRegistrateMail extends StatelessWidget {
  const _EnterYourRegistrateMail({Key? key}) : super(key: key);

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
          hintText: 'Введите почту указанную при регистрации',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
        ),
      ),
    );
  }
}

// Функция кнопка "Отправить" с переходом
class _SentButton2 extends StatelessWidget {
  const _SentButton2({Key? key}) : super(key: key);

  get elevation => null;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        ElevatedButton(
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
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0))),
          ),
          child: const Text(
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(16, 35, 100, 1),
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                fontSize: 16,
                fontFamily: 'Futura',
              ),
              'Отправить'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const PasswordRestored(), //  Переход на страницу восстановления по нажатию
              ),
            );
          },
        ),
      ],
    );
  }
}
