import 'package:flutter/material.dart';
import '1.3_registrate_step2.dart';
// import 'package:http/http.dart';

//Вытащить переменные из класса, чтобы они заработали.
// Фрейм "При нажатии зарегистрироваться 1.2"

class Registrate extends StatefulWidget {
  const Registrate({Key? key}) : super(key: key);

  @override
  _RegistrateState createState() => _RegistrateState();
}

class _RegistrateState extends State<Registrate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // Функция заголовка
          titleTextStyle: const TextStyle(
            color: Color.fromRGBO(16, 35, 100, 1),
            fontWeight: FontWeight.w600,
            fontSize: 18,
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
                SizedBox(height: 10),
                _ChoiceAvatar(),
                SizedBox(height: 20),
                _TextUnderAvatar(), //  Надпись "Расскажите о себе"
                SizedBox(height: 20),
                _EnterPartnerID(), //  Поле ввода - ID партнера
                SizedBox(height: 10),
                _EnterLastName(), //  Поле ввода - Фамилия
                SizedBox(height: 10),
                _EnterFirstName(), //  Поле ввода - Имя
                SizedBox(height: 10),
                _EnterSurName(), //  Поле ввода - Отчество
                SizedBox(height: 10),
                EnterBirthday(), //  Поле ввода - Дата рождения
                SizedBox(height: 160),
                _ButtonLastStep(), // Кнопка - Следующий шаг
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Функция выбора аватара профиля
class _ChoiceAvatar extends StatefulWidget {
  const _ChoiceAvatar({Key? key}) : super(key: key);
  @override
  _ChoiceAvatarState createState() => _ChoiceAvatarState();
}

class _ChoiceAvatarState extends State<_ChoiceAvatar> {
  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      const SizedBox(),
      GestureDetector(
        // ignore: avoid_print
        onTap: () => print("image clicked"),
        child: CircleAvatar(
          backgroundColor: const Color.fromRGBO(230, 235, 255, 1),
          radius: 50.0,
          // backgroundImage: ExactAssetImage('assets/icons/avatar_icon.png'),
          child: Image.asset(
            'assets/icons/avatar_icon1.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    ]);
  }
}

// Функция-текст под аватаром
class _TextUnderAvatar extends StatelessWidget {
  const _TextUnderAvatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Расскажите о себе',
      style: TextStyle(
        fontSize: 18,
        color: Color.fromRGBO(123, 133, 167, 1),
        fontFamily: 'Futura',
        fontWeight: FontWeight.w500,
      ),
    );
  }
}

// TextEditingController _emailController =
//     TextEditingController(); // Блок контроллера почты
// TextEditingController _passwordController =
//     TextEditingController(); // Блок контроллера пароля

// Добавить фокус ноды
// Функция поле ввода ID партнера
class _EnterPartnerID extends StatefulWidget {
  const _EnterPartnerID({Key? key}) : super(key: key);
  @override
  _EnterPartnerIDState createState() => _EnterPartnerIDState();
}

class _EnterPartnerIDState extends State<_EnterPartnerID> {
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

// Функция поле ввода Фамилии

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
          hintText: 'Имя',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
        ),
      ),
    );
  }
}

// Функция поле ввода Имени
class _EnterFirstName extends StatefulWidget {
  const _EnterFirstName({Key? key}) : super(key: key);
  @override
  _EnterFirstNameState createState() => _EnterFirstNameState();
}

class _EnterFirstNameState extends State<_EnterFirstName> {
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
          hintText: 'Фамилия',
          border: InputBorder.none,
          contentPadding:
              EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
        ),
      ),
    );
  }
}

// Функция поле ввода Отчества
class _EnterSurName extends StatefulWidget {
  const _EnterSurName({Key? key}) : super(key: key);
  @override
  _EnterSurNameState createState() => _EnterSurNameState();
}

class _EnterSurNameState extends State<_EnterSurName> {
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

// Функция поле ввода даты рождения
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

// Функция кнопка переход к следующему шагу
class _ButtonLastStep extends StatefulWidget {
  const _ButtonLastStep({Key? key}) : super(key: key);
  @override
  _ButtonLastStepState createState() => _ButtonLastStepState();
}

class _ButtonLastStepState extends State<_ButtonLastStep> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: ElevatedButton(
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
                const RegistrateStp2(), // Переход к следующему этапу регистрации
          ),
        );
      },
    ));
  }
}
