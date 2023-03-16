import 'package:flutter/material.dart';

import '../../../../l10n/localization_helper.dart';
import '../../../../themes/app_theme.dart';

class DrawerProducts extends StatelessWidget {
  final VoidCallback onLogOut;

  const DrawerProducts({
    super.key,
    required this.onLogOut,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: context.colorScheme.primary),
            curve: Curves.easeInOutBack,
            duration: const Duration(seconds: 1),
            child: Text(context.strings.eComerce),
          ),
          ListTile(
            tileColor: context.colorScheme.primaryContainer,
            leading: const Icon(Icons.logout),
            title: Text(context.strings.logOut),
            onTap: () {
              Navigator.of(context).pop();
              onLogOut();
            },
          ),
        ],
      ),
    );
  }
}
