// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'category.dart';

// TODO: Check if we need to import anything

// TODO: Define any constants

/// Category Route (screen).
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: Create a list of the eight Categories, using the names and colors
    List<Category> _categories = [];
    _baseColors.asMap().forEach(
            (i, value) {
              _categories.add(new Category(
                  name: _categoryNames[i],
                  color: value,
                  iconLocation: Icons.cake));
            });

    // TODO: Create a list view of the Categories
    final listView = ListView.builder(
        itemBuilder: (BuildContext context, int index) => _categories[index],
      itemCount: _categories.length,
    );


    // TODO: Create an App Bar
    final appBar = AppBar();

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}