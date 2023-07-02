import 'package:flutter/material.dart';
import 'package:penjemputan_sampah/providers/dashbord_providers.dart';
import 'package:penjemputan_sampah/providers/profil_panel.dart';
import 'package:penjemputan_sampah/providers/setting_panel_.dart';
import 'package:penjemputan_sampah/views/login_view.dart';
import 'package:provider/provider.dart';

main(List<String> args) {
  runApp(MultiProvider(
    builder: (context, Widget) {
      return const MaterialApp(
        home: LoginView(),
      );
    },
    providers: [
      ChangeNotifierProvider(create: (c) => dashbordprovider()),
    ],
  ));
}
