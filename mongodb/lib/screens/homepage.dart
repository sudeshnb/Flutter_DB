import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:mongo_test/components/todo_list.dart';
import 'package:mongo_test/components/create_item.dart';
import 'package:mongo_test/components/app_bar.dart';
import 'package:mongo_test/realm/realm_services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.of<RealmServices?>(context, listen: false) == null
        ? Container()
        : const Scaffold(
            appBar: TodoAppBar(),
            body: TodoList(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.endDocked,
            floatingActionButton: CreateItemAction(),
          );
  }
}
