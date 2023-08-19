import 'package:flutter/material.dart';
import '../client/1.5.1_client_profile.dart';

// Фрейм 1.6.1 "При нажатии Контактные данные"

class ClientContactDetails extends StatelessWidget {
  const ClientContactDetails({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // Функция заголовка
          titleTextStyle: const TextStyle(
            color: Color.fromRGBO(16, 35, 100, 1),
            fontWeight: FontWeight.w500,
            fontSize: 18,
            fontFamily: 'Futura',
          ),
          elevation: 0,
          centerTitle: true,
          title: const Text('Контактные данные'),
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
                SizedBox(height: 10),
                _ClientPhoneNumb(), //  Поле ввода - Телефон
                SizedBox(height: 10),
                _ClientMail(), //  Поле ввода - Почта
                SizedBox(height: 10),
                _EnterLastName(), //  Поле ввода - Адрес
                SizedBox(height: 16),
                _InfoAboutYou(),
                SizedBox(height: 16),
                _ClientPartnerID(),
                SizedBox(height: 10),
                _ClientLastName(),
                SizedBox(height: 10),
                _ClientFirstName(),
                SizedBox(height: 10),
                _ClientSurName(),
                SizedBox(height: 10),
                EnterBirthday(),
                SizedBox(height: 16),
                _CreateNewPassText(),
                SizedBox(height: 16),
                _ClientCreatePass(),
                SizedBox(height: 10),
                _ClientVerifyPass(),
                SizedBox(height: 44),
                _ButtonLastStepClient(),
                SizedBox(height: 20), // Кнопка - Следующий шаг
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Функция поле ввода телефона
class _ClientPhoneNumb extends StatefulWidget {
  const _ClientPhoneNumb({Key? key}) : super(key: key);
  @override
  _ClientPhoneNumbState createState() => _ClientPhoneNumbState();
}

class _ClientPhoneNumbState extends State<_ClientPhoneNumb> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromRGBO(230, 235, 255, 1),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
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
class _ClientMail extends StatefulWidget {
  const _ClientMail({Key? key}) : super(key: key);
  @override
  _ClientMailState createState() => _ClientMailState();
}

class _ClientMailState extends State<_ClientMail> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromRGBO(230, 235, 255, 1),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
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
class _EnterLastName extends StatefulWidget {
  const _EnterLastName({Key? key}) : super(key: key);
  @override
  _EnterLastNameState createState() => _EnterLastNameState();
}

class _EnterLastNameState extends State<_EnterLastName> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromRGBO(230, 235, 255, 1),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
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

// Функция текст "Информация о Вас"
class _InfoAboutYou extends StatelessWidget {
  const _InfoAboutYou({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Информация о Вас',
      style: TextStyle(
        fontFamily: 'Futura',
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: Color.fromRGBO(123, 133, 167, 1),
      ),
    );
  }
}

// Функция поле ввода ID партнера
class _ClientPartnerID extends StatefulWidget {
  const _ClientPartnerID({Key? key}) : super(key: key);
  @override
  _ClientPartnerIDState createState() => _ClientPartnerIDState();
}

class _ClientPartnerIDState extends State<_ClientPartnerID> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromRGBO(230, 235, 255, 1),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          hintStyle: TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(123, 133, 167, 1),
            fontFamily: 'Futura',
          ),
          hintText: 'ID партнера',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
        ),
      ),
    );
  }
}

// Функция поле ввода Фамилия
class _ClientLastName extends StatefulWidget {
  const _ClientLastName({Key? key}) : super(key: key);
  @override
  _ClientLastNameState createState() => _ClientLastNameState();
}

class _ClientLastNameState extends State<_ClientLastName> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromRGBO(230, 235, 255, 1),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          hintStyle: TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(123, 133, 167, 1),
            fontFamily: 'Futura',
          ),
          hintText: 'Фамлилия',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
        ),
      ),
    );
  }
}

// Функция поле ввода Имя
class _ClientFirstName extends StatefulWidget {
  const _ClientFirstName({Key? key}) : super(key: key);
  @override
  _ClientFirstNameState createState() => _ClientFirstNameState();
}

class _ClientFirstNameState extends State<_ClientFirstName> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromRGBO(230, 235, 255, 1),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          hintStyle: TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(123, 133, 167, 1),
            fontFamily: 'Futura',
          ),
          hintText: 'Имя',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
        ),
      ),
    );
  }
}

// Функция поле ввода Отчество
class _ClientSurName extends StatefulWidget {
  const _ClientSurName({Key? key}) : super(key: key);
  @override
  _ClientSurNameState createState() => _ClientSurNameState();
}

class _ClientSurNameState extends State<_ClientSurName> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromRGBO(230, 235, 255, 1),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          hintStyle: TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(123, 133, 167, 1),
            fontFamily: 'Futura',
          ),
          hintText: 'Отчество',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
        ),
      ),
    );
  }
}

// Функция поле ввода Дата рождения (Дубляж из 1.2 Тест)
class EnterBirthday extends StatefulWidget {
  const EnterBirthday({Key? key}) : super(key: key);
  @override
  EnterBirthdayState createState() => EnterBirthdayState();
}

class EnterBirthdayState extends State<EnterBirthday> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 48,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: const Color.fromRGBO(230, 235, 255, 1),
      ),
      child: TextFormField(
        decoration: const InputDecoration(
          hintStyle: TextStyle(
            fontSize: 16,
            color: Color.fromRGBO(123, 133, 167, 1),
            fontFamily: 'Futura',
          ),
          hintText: 'Дата рождения (дд.мм.гггг)',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
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
        fontSize: 18,
        color: Color.fromRGBO(123, 133, 167, 1),
      ),
    );
  }
}

// Функция поле ввода телефона
class _ClientCreatePass extends StatefulWidget {
  const _ClientCreatePass({Key? key}) : super(key: key);

  @override
  _ClientCreatePassState createState() => _ClientCreatePassState();
}

class _ClientCreatePassState extends State<_ClientCreatePass> {
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
          hintText: 'Новый пароль',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
        ),
      ),
    );
  }
}

// Функция поле ввода телефона

class _ClientVerifyPass extends StatefulWidget {
  const _ClientVerifyPass({Key? key}) : super(key: key);

  @override
  _ClientVerifyPassState createState() => _ClientVerifyPassState();
}

class _ClientVerifyPassState extends State<_ClientVerifyPass> {
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

// Функция кнопка "Следующий шаг" с переходом
class _ButtonLastStepClient extends StatelessWidget {
  const _ButtonLastStepClient({Key? key}) : super(key: key);

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
          'Сохранить'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const UsualUserProfile(), // Переход к следующему этапу регистрации
          ),
        );
      },
    );
  }
}
