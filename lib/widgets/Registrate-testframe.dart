// import 'package:flutter/material.dart';

// class Authorization extends StatefulWidget {
//   Authorization({Key? key}) : super(key: key);

//   @override
//   _AuthorizationState createState() => _AuthorizationState();
// }

// class _AuthorizationState extends State<Authorization> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//             // Функция заголовка
//             titleTextStyle: const TextStyle(
//               color: Color.fromRGBO(16, 35, 100, 1),
//               fontWeight: FontWeight.w500,
//               fontSize: 18,
//             ),
//             elevation: 0,
//             centerTitle: true,
//             title: const Text('Зарегистрироваться'),
//             backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
//             iconTheme: const IconThemeData(
//               color: Color.fromRGBO(108, 130, 209, 1),
//             ),
//             leading: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: const Icon(
//                   Icons.arrow_back_outlined), // Кнопка-иконка вернуться назад
//             )),
//         body: ListView(
//           children: [
//             _ChoiceAvatar(),

//             SizedBox(height: 10),

//             _EnterFirstName(),
//           ],
//         ));
//   }
// }

// // Функция выбора аватара профиля

// class _ChoiceAvatar extends StatefulWidget {
//   const _ChoiceAvatar({Key? key}) : super(key: key);
//   @override
//   _ChoiceAvatarState createState() => _ChoiceAvatarState();
// }

// class _ChoiceAvatarState extends State<_ChoiceAvatar> {
//   @override
//   Widget build(BuildContext context) {
//     return Column(children: <Widget>[
//       const SizedBox(),
//       GestureDetector(
//         // ignore: avoid_print
//         onTap: () => print("image clicked"),
//         child: const CircleAvatar(
//           backgroundColor: Color.fromRGBO(230, 235, 255, 1),
//           radius: 50.0,
//           backgroundImage: ExactAssetImage('assets/icons/avatar_icon.png'),
//         ),
//       ),
//     ]);
//   }
// }

// class _EnterFirstName extends StatefulWidget {
//   const _EnterFirstName({Key? key}) : super(key: key);
//   @override
//   _EnterFirstNameState createState() => _EnterFirstNameState();
// }

// class _EnterFirstNameState extends State<_EnterFirstName> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 355,
//       height: 48,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(50),
//         color: const Color.fromRGBO(230, 235, 255, 1),
//       ),
//       child: TextFormField(
//         decoration: const InputDecoration(
//           hintText: 'Имя',
//           border: InputBorder.none,
//           contentPadding:
//               EdgeInsets.only(left: 16, top: 13.5, right: 16, bottom: 13.5),
//         ),
//       ),
//     );
//   }
// }
