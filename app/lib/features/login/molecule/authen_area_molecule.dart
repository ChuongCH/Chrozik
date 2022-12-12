import 'package:flutter/material.dart';

import '../../common/atom/text_button_atom.dart';

class AuthenAreaMolecule extends StatelessWidget {
  const AuthenAreaMolecule({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextButtonAtom(
        text: 'Log in',
        onPressed: () {},
      ),
    );
  }
}
