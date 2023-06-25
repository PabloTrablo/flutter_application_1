import 'package:flutter/material.dart';
import '1.0.1_click_entry.dart';

// 1.0.3 - При нажатии кнопки "Восстановить"

class PasswordRestored extends StatelessWidget {
  const PasswordRestored({Key? key}) : super(key: key);
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
              Navigator.pop(context); // Кнопка-иконка вернуться назад
            },
            icon: const Icon(Icons.arrow_back_outlined),
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
                _GoodBoyText(), // Текст об успешном восстановлении
                SizedBox(height: 10),
                _EmailMessagePass(), // Текст - "на вашу почту отправлена инструкция.."
                SizedBox(height: 400),
                _BackAutorizateButton(), // Кнопка возврат к фрейму авторизации
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Функция-текст об успешном выполнении
class _GoodBoyText extends StatelessWidget {
  const _GoodBoyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: 225,
          height: 23,
          child: Text(
            'Успешно!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(48, 161, 29, 1),
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w500,
              fontSize: 18,
              fontFamily: 'Futura',
            ),
          ),
        ),
      ],
    );
  }
}

// Функция-текст "... отправлено на вашу почту"
class _EmailMessagePass extends StatelessWidget {
  const _EmailMessagePass({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: 320,
          height: 70,
          child: Text(
            'На вашу почту отправлено сообщение с инструкцией по восстановлению пароля',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(123, 133, 167, 1),
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 18,
              fontFamily: 'Futura',
            ),
          ),
        ),
      ],
    );
  }
}

// Функция кнопка на возврат к странице авторизации
class _BackAutorizateButton extends StatelessWidget {
  const _BackAutorizateButton({Key? key}) : super(key: key);

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
              'Перейти к авторизации'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const EntryClick(), // Переход к фрейму авторизации
              ),
            );
          },
        ),
      ],
    );
  }
}
