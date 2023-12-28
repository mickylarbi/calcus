import 'package:calcus/ui/key_tile.dart';
import 'package:flutter/material.dart';

class Keypad extends StatelessWidget {
  const Keypad({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            KeyTile(
              text: 'AC',
              type: TileType.clear,
            ),
            VerticalDivider(color: Colors.white, width: 1),
            KeyTile(
              text: '+/-',
              type: TileType.operation,
            ),
            VerticalDivider(color: Colors.white, width: 1),
            KeyTile(
              text: '%',
              type: TileType.operation,
            ),
            VerticalDivider(color: Colors.white, width: 1),
            KeyTile(
              text: '=',
              type: TileType.operation,
            ),
          ],
        ),
        Divider(color: Colors.white, height: 1),
        Row(
          children: [
            KeyTile(
              text: '7',
            ),
            VerticalDivider(color: Colors.white, width: 1),
            KeyTile(
              text: '8',
            ),
            VerticalDivider(color: Colors.white, width: 1),
            KeyTile(
              text: '9',
            ),
            VerticalDivider(color: Colors.white, width: 1),
            KeyTile(
              text: '/',
              type: TileType.operator,
            ),
          ],
        ),
        Divider(color: Colors.white, height: 1),
        Row(
          children: [
            KeyTile(
              text: '4',
            ),
            VerticalDivider(color: Colors.white, width: 1),
            KeyTile(
              text: '5',
            ),
            VerticalDivider(color: Colors.white, width: 1),
            KeyTile(
              text: '6',
            ),
            VerticalDivider(color: Colors.white, width: 1),
            KeyTile(
              text: '*',
              type: TileType.operator,
            ),
          ],
        ),
        Divider(color: Colors.white, height: 1),
        Row(
          children: [
            KeyTile(
              text: '1',
            ),
            VerticalDivider(color: Colors.white, width: 1),
            KeyTile(
              text: '2',
            ),
            VerticalDivider(color: Colors.white, width: 1),
            KeyTile(
              text: '3',
            ),
            VerticalDivider(color: Colors.white, width: 1),
            KeyTile(
              text: '-',
              type: TileType.operator,
            ),
          ],
        ),
        Divider(color: Colors.white, height: 1),
        Row(
          children: [
            KeyTile(
              text: '0',
            ),
            VerticalDivider(color: Colors.white, width: 1),
            KeyTile(
              text: '.',
            ),
            VerticalDivider(color: Colors.white, width: 1),
            KeyTile(
              text: '+',
              type: TileType.operator,
            ),
          ],
        ),
      ],
    );
  }
}
