import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 24, bottom: 24),
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tipes',
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'build your career with Hussein',
                style: TextStyle(
                  color: Colors.grey.withOpacity(.8),
                  fontSize: 18,
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_outline_rounded,
                color: Colors.black,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 25,
            ),
            child: Text(
              '10 - 12 - 2024',
              style: TextStyle(
                color: Colors.grey.withOpacity(.8),
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
