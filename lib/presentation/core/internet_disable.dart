import 'package:flutter/widgets.dart';

class InternetDisable extends StatelessWidget {
  const InternetDisable({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Internet is not available, please check wifi/data! 🙏',
      style: TextStyle(
        fontSize: 20,
      ),
      textAlign: TextAlign.center,
    );
  }
}
