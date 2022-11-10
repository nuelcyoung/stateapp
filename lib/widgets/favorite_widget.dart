import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stateapp/providers/favorite_provider.dart';

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  @override
  Widget build(BuildContext context) {
    return Consumer<FavoriteProvider>(builder: (context, index, child) {
      
    });
  }
}
