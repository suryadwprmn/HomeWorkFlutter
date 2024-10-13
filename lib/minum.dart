import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Untuk mendapatkan tanggal hari ini
import 'package:shared_preferences/shared_preferences.dart'; // Untuk simpan ke local storage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minum Slider with Daily Reset',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MinumSliderPage(),
    );
  }
}

class MinumSliderPage extends StatefulWidget {
  const MinumSliderPage({super.key});

  @override
  _MinumSliderPageState createState() => _MinumSliderPageState();
}

class _MinumSliderPageState extends State<MinumSliderPage> {
  int current = 0;
  final int max = 8;
  SharedPreferences? prefs;

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  // Load nilai dari local storage
  void _loadData() async {
    prefs = await SharedPreferences.getInstance();
    String today = DateFormat('yyyy-MM-dd').format(DateTime.now());
    String? lastResetDate = prefs?.getString('lastResetDate');

    if (lastResetDate == null || lastResetDate != today) {
      // Reset jika hari baru
      setState(() {
        current = 0;
      });
      prefs?.setInt('sliderValue', current);
      prefs?.setString('lastResetDate', today);
      _showFlashMessage(
          context,
          'Target minum Anda telah direset untuk hari baru.',
          const Duration(seconds: 4));
    } else {
      setState(() {
        current = prefs?.getInt('sliderValue') ?? 0;
      });
    }
  }

  // Simpan nilai ke local storage
  void _saveData() {
    prefs?.setInt('sliderValue', current);
  }

  // Fungsi untuk menampilkan flash message
  void _showFlashMessage(
      BuildContext context, String message, Duration duration) {
    final snackBar = SnackBar(content: Text(message), duration: duration);
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  // Fungsi untuk mengubah slider
  void _incrementSlider() {
    if (current < max) {
      setState(() {
        current++;
      });
      _saveData();
      _checkProgress();
    }
  }

  // Fungsi untuk reset manual
  void _manualReset() {
    setState(() {
      current = 0;
    });
    _saveData();
    _showFlashMessage(
        context, 'Slider telah direset ke 0', const Duration(seconds: 3));
  }

  // Cek progress untuk memberikan pesan motivasi
  void _checkProgress() {
    String message;
    if (current < 3) {
      message = 'Target minummu masih kurang!';
    } else if (current >= 3 && current <= 5) {
      message = 'Ayo perbanyak minum lagi!';
    } else if (current == 6) {
      message = 'Target minummu tercapai sedikit lagi!';
    } else if (current == 7) {
      message = 'Target minummu hampir tercapai!';
    } else if (current == 8) {
      message = 'Selamat! Target minummu tercapai hari ini!';
    } else {
      message = '';
    }
    _showFlashMessage(context, message, const Duration(seconds: 3));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minum Slider'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Slider Progress Indicator
            SizedBox(
              width: 300,
              child: LinearProgressIndicator(
                value: current / max,
                backgroundColor: Colors.grey[300],
                color: Colors.green,
              ),
            ),
            const SizedBox(height: 10),
            Text('$current / $max', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _incrementSlider,
              child: const Text('Minum'),
            ),
            ElevatedButton(
              onPressed: _manualReset,
              child: const Text('Reset'),
            ),
          ],
        ),
      ),
    );
  }
}
