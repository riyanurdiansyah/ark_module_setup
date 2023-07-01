import 'package:ark_module_setup/utils/app_style_text.dart';
import 'package:flutter/material.dart';

class MaintenancePage extends StatelessWidget {
  const MaintenancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(35.0),
          child: Column(
            children: [
              Image.asset('assets/images/arkademi-icon.png', height: 50),
              const SizedBox(height: 120),
              Image.asset(
                'assets/images/mt-state.png',
                height: 200,
              ),
              const SizedBox(height: 30),
              Text(
                'Sedang dalam perbaikan sistem…',
                // style: TextStyle(fontWeight: FontWeight.w800, fontSize: 18),
                textAlign: TextAlign.center,
                style: AppStyleText.styleMontserrat(
                  fontWeight: FontWeight.w800,
                  fontSize: 18,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                'Maaf atas ketidaknyamanan Anda, kami akan segera kembali lagi!',
                style: AppStyleText.styleMontserrat(
                  fontSize: 13,
                  color: const Color.fromRGBO(90, 92, 96, 1),
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Text(
                'Terima kasih atas pengertiannya.',
                style: AppStyleText.styleMontserrat(
                  fontSize: 13,
                  color: const Color.fromRGBO(90, 92, 96, 1),
                ),
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
