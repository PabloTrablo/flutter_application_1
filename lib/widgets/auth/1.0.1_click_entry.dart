import 'package:flutter/material.dart';
// import '1.0.2_restore_password.dart';
// import '1.5_main_online_entry.dart';

// 1.0.1 - При нажатии кнопки войти
class EntryClick extends StatefulWidget {
  const EntryClick({Key? key}) : super(key: key);

  @override
  EntryClickState createState() => EntryClickState();
}

class EntryClickState extends State<EntryClick> {
  final _phoneMailController =
      TextEditingController(); // ОбЪявление переменных контроллера телефон/почта
  final _passwordController =
      TextEditingController(); // ОбЪявление переменных контроллера пароль

  String? errorText;

  void _auth() {
    // Функция для полей авторизации
    final phoneMail = _phoneMailController
        .text; // Переменная контроллер телефон/почта в поле авторизации
    final password = _passwordController
        .text; // Переменная контроллер пароля в поле авторизации
    if (phoneMail == 'sarafan' && password == 'pass') {
      // Затычка, условие для данных полей авторизации
      errorText = null;
      Navigator.of(context).pushReplacementNamed(
          '/main_frame_category'); // Навигация с преходом к главной, при успошном выполнении условий
    } else {
      errorText = 'Неверные данные';
    }
    setState(() {});
  }

  void _resetPassword() {
    // Тестовая, добавить навигацию
    print('Password Reset'); // Переход на страницу восстановления пароля
  }

  @override
  Widget build(BuildContext context) {
    final errorText = this.errorText; // Переменная оповещение об ошибке ввода
    return Scaffold(
      // resizeToAvoidBottomInset: false,
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
          title: const Text('Войти'),
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 40),
            if (errorText != null) // Информация об ошибке
              Text(
                errorText,
                style: const TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontFamily: 'Futura',
                    fontWeight: FontWeight.w500),
              ),
            const SizedBox(height: 10),
            Container(
              // Контейнер для формы
              width: 355,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromRGBO(230, 235, 255, 1),
              ),
              child: TextFormField(
                // Форма для ввода телефон/почта
                controller: _phoneMailController,
                decoration: const InputDecoration(
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(123, 133, 167, 1),
                    fontFamily: 'Futura',
                  ),
                  hintText: 'Номер телефона или почта',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(
                      left: 16, top: 13.5, right: 16, bottom: 13.5),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              // Контейнер для формы
              width: 355,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color.fromRGBO(230, 235, 255, 1),
              ),
              child: TextFormField(
                // Форма для ввода пароля
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Color.fromRGBO(123, 133, 167, 1),
                    fontFamily: 'Futura',
                  ),
                  hintText: 'Пароль',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(
                      left: 16, top: 13.5, right: 16, bottom: 13.5),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                // Строка с текстом и кнопкой восстановить пароль
                textDirection: TextDirection.ltr,
                children: <Widget>[
                  const Text(
                    'Забыли пароль?',
                    style: TextStyle(
                      color: Color.fromRGBO(123, 133, 167, 1),
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      fontFamily: 'Futura',
                    ),
                  ),
                  TextButton(
                    // Кнопка восстановить пароль
                    style: TextButton.styleFrom(),
                    onPressed: _resetPassword,
                    // () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) =>
                    //         const RestorePass(), // Переход на страницу восстановления пароля
                    //   ),
                    // );
                    // },
                    child: const Text(
                        style: TextStyle(
                          color: Color.fromRGBO(70, 95, 185, 1),
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          fontFamily: 'Futura',
                        ),
                        'Восстановить'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 360),
            ElevatedButton(
              // Кнопка отправки данных для авторизации
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
              onPressed:
                  _auth, // При успешном событии переход к главной странице
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
              // () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) =>
              //         const MainFrameCategory(), // Переход к фрейму категорий (главной)
              //   ),
              // );
              // },
            ),
          ],
        ),
      ),
    );
  }
}

//  Функция для поля ввода телефона/почты
// class _PhonePassForm extends StatefulWidget {
//   const _PhonePassForm({Key? key}) : super(key: key);
//   @override
//   _PhonePassFormState createState() => _PhonePassFormState();
// }

// class _PhonePassFormState extends State<_PhonePassForm> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           width: 355,
//           height: 48,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(50),
//             color: const Color.fromRGBO(230, 235, 255, 1),
//           ),
//           child: const Form(
//             child: TextField(
//               decoration: InputDecoration(
//                 hintStyle: TextStyle(
//                   fontSize: 16,
//                   color: Color.fromRGBO(123, 133, 167, 1),
//                   fontFamily: 'Futura',
//                 ),
//                 hintText: 'Номер телефона или почта',
//                 border: InputBorder.none,
//                 contentPadding: EdgeInsets.only(
//                     left: 16, top: 13.5, right: 16, bottom: 13.5),
//               ),
//             ),
//           ),
//         ),
//         Container(
//           width: 355,
//           height: 48,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(50),
//             color: const Color.fromRGBO(230, 235, 255, 1),
//           ),
//           child: TextFormField(
//             decoration: const InputDecoration(
//               hintStyle: TextStyle(
//                 fontSize: 16,
//                 color: Color.fromRGBO(123, 133, 167, 1),
//                 fontFamily: 'Futura',
//               ),
//               hintText: 'Пароль',
//               border: InputBorder.none,
//               contentPadding:
//                   EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// Функция для поля ввода пароля

// class _EnterPass extends StatefulWidget {
//   const _EnterPass({Key? key}) : super(key: key);
//   @override
//   _EnterPassState createState() => _EnterPassState();
// }

// class _EnterPassState extends State<_EnterPass> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Container(
//           width: 355,
//           height: 48,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(50),
//             color: const Color.fromRGBO(230, 235, 255, 1),
//           ),
//           child: TextFormField(
//             decoration: const InputDecoration(
//               hintStyle: TextStyle(
//                 fontSize: 16,
//                 color: Color.fromRGBO(123, 133, 167, 1),
//                 fontFamily: 'Futura',
//               ),
//               hintText: 'Пароль',
//               border: InputBorder.none,
//               contentPadding:
//                   EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

// Функция текст и кнопка для восстановления пароля
// class _EnterButton extends StatefulWidget {
//   const _EnterButton({Key? key}) : super(key: key);
//   @override
//   _EnterButtonState createState() => _EnterButtonState();
// }

// class _EnterButtonState extends State<_EnterButton> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.only(left: 35),
//       child: Row(
//         textDirection: TextDirection.ltr,
//         children: <Widget>[
//           const Text(
//             'Забыли пароль?',
//             style: TextStyle(
//               color: Color.fromRGBO(123, 133, 167, 1),
//               fontStyle: FontStyle.normal,
//               fontWeight: FontWeight.w500,
//               fontSize: 16,
//               fontFamily: 'Futura',
//             ),
//           ),
//           TextButton(
//             style: TextButton.styleFrom(),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) =>
//                       const RestorePass(), // Переход на страницу восстановления пароля
//                 ),
//               );
//             },
//             child: const Text(
//                 style: TextStyle(
//                   color: Color.fromRGBO(70, 95, 185, 1),
//                   fontStyle: FontStyle.normal,
//                   fontWeight: FontWeight.w500,
//                   fontSize: 16,
//                   fontFamily: 'Futura',
//                 ),
//                 'Восстановить'),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Функция кнопка "Отправить"
// class _SentButton1 extends StatefulWidget {
//   const _SentButton1({Key? key}) : super(key: key);
//   @override
//   _SentButton1State createState() => _SentButton1State();
// }

// class _SentButton1State extends State<_SentButton1> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.end,
//       children: <Widget>[
//         ElevatedButton(
//           style: ButtonStyle(
//             elevation: const MaterialStatePropertyAll(0),
//             fixedSize: const MaterialStatePropertyAll(
//               Size(355, 48),
//             ),
//             backgroundColor: const MaterialStatePropertyAll(
//               Color.fromRGBO(186, 200, 249, 1),
//             ),
//             textStyle: const MaterialStatePropertyAll(
//               TextStyle(fontSize: 16),
//             ),
//             shape: MaterialStateProperty.all(RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(30.0))),
//           ),
//           child: const Text(
//               textAlign: TextAlign.center,
//               style: TextStyle(
//                 color: Color.fromRGBO(16, 35, 100, 1),
//                 fontStyle: FontStyle.normal,
//                 fontWeight: FontWeight.w500,
//                 fontSize: 16,
//                 fontFamily: 'Futura',
//               ),
//               'Отправить'),
//           onPressed: () {
//             // Отправка-переход после нажатя кнопки ...
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => const MainFrameCategory(),
//               ),
//             );
//           },
//         ),
//       ],
//     );
//   }
// }
