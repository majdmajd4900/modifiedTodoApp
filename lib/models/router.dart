import 'package:auto_route/auto_route_annotations.dart';
import 'package:sqflitee/ui/addnewtask.dart';
import 'package:sqflitee/ui/homepage.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    // initial route is named "/"
    MaterialRoute(page: HomePage, initial: true),
    MaterialRoute(page: AddingNewTaskPage,),
  ],
)
class $Router{}