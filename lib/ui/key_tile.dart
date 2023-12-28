import 'package:calcus/utils/dimensions.dart';
import 'package:flutter/material.dart';

class KeyTile extends StatelessWidget {
  const KeyTile(
      {super.key, required this.text, this.type = TileType.digit, this.onTap});
  final String text;
  final TileType type;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        print('text: ${text}\ntype: ${type}');
      },
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(24),
        width: text == '0'
            ? ((screenSize(context).width / 2) - 0.5)
            : ((screenSize(context).width / 4) - 0.75),
        decoration: BoxDecoration(
          color: tileColor()!.withOpacity(.3),
        ),
        child: Column(
          children: [
            Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .titleLarge!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  Color? tileColor() {
    if (type == TileType.clear) return Colors.red;
    if (type == TileType.operator) return Colors.yellow;
    if (type == TileType.operation) return Colors.green;

    return Colors.grey;
  }
}

enum TileType { operator, operation, digit, clear }
