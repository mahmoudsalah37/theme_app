import 'package:flutter/material.dart';
import 'package:theme_app/main.dart';

import 'theme/custom_colors_extension.dart';
import 'theme/tw_theme.dart';
import 'tw_constents.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final customColorsExtension =
        Theme.of(context).extension<CustomColorsExtension>()!;
    final primaryColor = HexColor.fromHex(
        customColorsExtension.colorsModel.primary!.primaryColor!.value!);
    final secondaryButton = HexColor.fromHex(
        customColorsExtension.colorsModel.button!.secondaryButton!.value!);
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: const Text('Update Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            const Text(
              'National Address',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Row(
                children: <Widget>[
                  Icon(Icons.info, color: Colors.blue),
                  SizedBox(width: 8),
                  Expanded(
                    child: Text(
                      'This address is auto-updated from SPL, to change your National Address visit SPL website. That’s your go-to place for any changes!',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: 'Riyadh',
              items: ['Riyadh', 'Jeddah', 'Dammam']
                  .map((label) => DropdownMenuItem(
                        value: label,
                        child: Text(label),
                      ))
                  .toList(),
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'City',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: 'Al Malqa',
              items: [
                'Al Malqa',
                'Al Olaya',
                'Al Sulaymaniyah',
              ]
                  .map((label) => DropdownMenuItem(
                        value: label,
                        child: Text(label),
                      ))
                  .toList(),
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: 'District',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: '12341',
              decoration: const InputDecoration(
                labelText: 'Postal Code',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            TextFormField(
              initialValue: '6567 Al Thoumamaha Rd, 3469, Ar Rabi',
              decoration: const InputDecoration(
                labelText: 'Street',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: <Widget>[
                Expanded(
                  child: TextFormField(
                    initialValue: '24',
                    decoration: const InputDecoration(
                      labelText: 'Building Number',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    initialValue: '13321',
                    decoration: const InputDecoration(
                      labelText: 'Secondary Number',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryButton,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  textStyle: const TextStyle(fontSize: 18),
                ),
                child: const Text('Update'),
              ),
            ),
            const SizedBox(height: 4),
            Center(
              child: DropdownButtonFormField<ThemeData>(
                decoration: const InputDecoration(
                  labelText: 'Theme',
                  border: OutlineInputBorder(),
                ),
                value: notifier.value,
                onChanged: (newTheme) {
                  notifier.value = newTheme!;
                },
                items: [
                  DropdownMenuItem(
                      value: TWTheme.lightTheme,
                      child: const Text('lightTheme')),
                  DropdownMenuItem(
                      value: TWTheme.darkTheme, child: const Text('darkTheme')),
                  DropdownMenuItem(
                      value: TWTheme.nationalDayTheme,
                      child: const Text('nationalDayTheme')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
