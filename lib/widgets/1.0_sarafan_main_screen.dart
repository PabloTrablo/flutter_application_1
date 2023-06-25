import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/1.0.1_click_entry.dart';
import '1.2_registrate_frame.dart';

// Фрейм "Стартовый экран 1.0"

class SarafanMainScreen extends StatelessWidget {
  const SarafanMainScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Функция заголовка
        titleTextStyle: const TextStyle(
          color: Color.fromRGBO(16, 35, 100, 1),
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          fontSize: 30,
          fontFamily: 'FuturaBold',
        ),
        elevation: 0,
        centerTitle: true,
        title: const Text('САРАФАН'),
        backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints(),
          child: const SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30),
                _MainImg(), //  Изображение на приветсвенном экране
                SizedBox(height: 30),
                _TextUnderImg(), //  Текст "Твой салон красоты..."
                SizedBox(height: 30),
                _RegistrateButton(), // Кнопка "Зарегистрироваться"
                SizedBox(height: 12),
                _MasterDirectoryButton(), // Кнопка перехода в каталог мастеров
                SizedBox(height: 18),
                _InfoPersonalDataSave(), // Информация о сборе персональных данных
                SizedBox(height: 20),
                _IfHaveAccTxt(), // Надпись "Уже есть аккаунт?"
                SizedBox(height: 0),
                _EnterButton(), // Кнопка "Войти"
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// Функция вывода главного изображения приветственный экран
class _MainImg extends StatelessWidget {
  const _MainImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Image(
        height: 214.36,
        width: 320,
        image: AssetImage('assets/images/Main_SaraFrame.png'),
      ),
    );
  }
}

// Функция вывода надписи под главным изображением
class _TextUnderImg extends StatelessWidget {
  const _TextUnderImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: 225,
          height: 46,
          child: Text(
            'Твой салон красоты онлайн на Сарафане',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(16, 35, 100, 1),
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

// Функция кнопки "Зарегистрироваться"
class _RegistrateButton extends StatelessWidget {
  const _RegistrateButton({Key? key}) : super(key: key);

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
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromRGBO(16, 35, 100, 1),
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 18,
            fontFamily: 'Futura',
          ),
          'Зарегистрироваться'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const Registrate(), // Переход к странице регистрации 1
          ),
        );
      },
    );
  }
}

// Функция кнопки для перехода к каталогу мастеров
class _MasterDirectoryButton extends StatelessWidget {
  const _MasterDirectoryButton({Key? key}) : super(key: key);

  get elevation => null;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        elevation: const MaterialStatePropertyAll(0),
        fixedSize: const MaterialStatePropertyAll(Size(355, 48)),
        backgroundColor:
            const MaterialStatePropertyAll(Color.fromRGBO(255, 255, 255, 1)),
        textStyle: const MaterialStatePropertyAll(TextStyle(fontSize: 16)),
        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          side: const BorderSide(
              width: 1.5, color: Color.fromRGBO(108, 130, 209, 1)),
          borderRadius: BorderRadius.circular(30.0),
        )),
      ),
      child: const Text(
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromRGBO(70, 95, 185, 1),
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 18,
            fontFamily: 'Futura',
          ),
          'Разместиться в каталоге мастеров'),
      onPressed: () {}, // Будет переход к размещению  каталоге мастеров
    );
  }
}

// Текст информация о согласии на обработку данных
class _InfoPersonalDataSave extends StatelessWidget {
  const _InfoPersonalDataSave({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          width: 219,
          height: 30,
          child: Text(
            'Нажимая на кнопку, я соглашаюсь на сбор и хранение персональных данных',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(123, 133, 167, 1),
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              fontFamily: 'Futura',
            ),
          ),
        ),
      ],
    );
  }
}

// Надпись над кнопкой "Войти", если у Вас уже есть аккаунт
class _IfHaveAccTxt extends StatelessWidget {
  const _IfHaveAccTxt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          child: Text(
            'Уже есть аккаунт?',
            style: TextStyle(
              color: Color.fromRGBO(16, 35, 100, 1),
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w400,
              fontSize: 16,
              fontFamily: 'Futura',
            ),
          ),
        ),
      ],
    );
  }
}

// Функция кнопки "Войти", если уже зарегистрированы.
class _EnterButton extends StatelessWidget {
  const _EnterButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(),
      child: const Text(
          style: TextStyle(
            color: Color.fromRGBO(70, 95, 185, 1),
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500,
            fontSize: 16,
            fontFamily: 'Futura',
          ),
          'Войти'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>
                const EntryClick(), // Переход на страницу входа в аккаунт
          ),
        );
      },
    );
  }
}
