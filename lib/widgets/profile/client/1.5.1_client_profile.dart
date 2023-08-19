import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../master/1.6.1_master_info.dart';
import '../service_info/1.6.2_service_info.dart';

// 1.5.1 Профиль обычного пользователя
class UsualUserProfile extends StatelessWidget {
  const UsualUserProfile({Key? key}) : super(key: key);

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
        // Заголовок зависит от выбранной категории
        title: const Text(
          'Клиент А.',
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
      body: SingleChildScrollView(
          child: Column(
        children: [
          const SizedBox(height: 16),
          const CircleAvatar(
            radius: 80,
            backgroundColor: Color.fromRGBO(255, 255, 255, 1),
            backgroundImage: AssetImage('assets/icons/client_face_test.png'),
          ),
          const SizedBox(height: 12),
          const Text('Клиент',
              style: TextStyle(
                  color: Color.fromRGBO(123, 133, 167, 1),
                  fontSize: 18,
                  fontFamily: 'Futura',
                  fontWeight: FontWeight.w500)),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.only(left: 5, top: 5, right: 5),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ClientContactDetails(),
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        height: 48,
                        width: 355,
                        child: const Text(
                          'Контактные данные',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(16, 35, 100, 1),
                          ),
                        ),
                      ),
                      const Icon(Icons.chevron_right_sharp),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ServiceInfoClick(),
                        ));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 10),
                        height: 48,
                        width: 355,
                        child: const Text(
                          'О сервисе',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Futura',
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(16, 35, 100, 1),
                          ),
                        ),
                      ),
                      const Icon(Icons.chevron_right_sharp),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 66),
          const Text('Ваша реферальная ссылка',
              style: TextStyle(
                  color: Color.fromRGBO(16, 35, 100, 1),
                  fontSize: 16,
                  fontFamily: 'Futura',
                  fontWeight: FontWeight.w500)),
          const SizedBox(height: 10),
          InkWell(
            child: const Text('https://www.google.com/',
                style: TextStyle(
                    color: Color.fromRGBO(198, 203, 219, 1),
                    fontSize: 16,
                    fontFamily: 'Futura',
                    fontWeight: FontWeight.w500)),
            onTap: () {
              launchUrl(Uri.parse('https://www.google.com/'));
            },
          ),
        ],
      )),
    );
  }
}
