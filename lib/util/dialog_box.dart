import 'package:flutter/material.dart';
import 'package:todo_apps/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;
  DialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.lightGreen,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //mendapatkan inputan dari user
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Tambah Catatan Baru",
              ),
            ),

            // tombol save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // tombol save
                MyButton(text: "Save", onPressed: onSave),

                const SizedBox(
                  width: 8,
                ),
                // tombol batal
                MyButton(text: "Cancel", onPressed: onCancel)
              ],
            )
          ],
        ),
      ),
    );
  }
}
