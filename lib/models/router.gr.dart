// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:sqflitee/ui/homepage.dart';
import 'package:sqflitee/ui/addnewtask.dart';

class Routes {
  static const String homePage = '/';
  static const String addingNewTaskPage = '/adding-new-task-page';
  static const all = <String>{
    homePage,
    addingNewTaskPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homePage, page: HomePage),
    RouteDef(Routes.addingNewTaskPage, page: AddingNewTaskPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    HomePage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomePage(),
        settings: data,
      );
    },
    AddingNewTaskPage: (RouteData data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AddingNewTaskPage(),
        settings: data,
      );
    },
  };
}
