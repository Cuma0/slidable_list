import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'utils/color_scheme.dart';

class HomePageView extends StatefulWidget {
  const HomePageView({super.key});

  @override
  State<HomePageView> createState() => _HomePageViewState();
}

class _HomePageViewState extends State<HomePageView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorSchemeLight.instance!.darkWhite,
      appBar: AppBar(
        backgroundColor: ColorSchemeLight.instance!.darkBlue,
        title: const Text(
          "Slidable List",
        ),
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Slidable(
            key: const ValueKey(0),
            startActionPane: ActionPane(
              extentRatio: 0.25,
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: null,
                  backgroundColor: ColorSchemeLight.instance!.blue,
                  foregroundColor: ColorSchemeLight.instance!.white,
                  icon: Icons.share,
                  label: 'Share',
                ),
              ],
            ),
            endActionPane: ActionPane(
              dismissible: DismissiblePane(onDismissed: () {}),
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: null,
                  backgroundColor: ColorSchemeLight.instance!.blue,
                  foregroundColor: ColorSchemeLight.instance!.white,
                  icon: Icons.edit,
                  label: 'Edit',
                ),
                SlidableAction(
                  onPressed: null,
                  backgroundColor: CupertinoColors.systemRed,
                  foregroundColor: ColorSchemeLight.instance!.white,
                  icon: Icons.delete,
                  label: 'Delete',
                ),
              ],
            ),
            child: Column(
              children: [
                ListTile(
                  title: Text("Title ${index.toString()}"),
                  subtitle: const Text("Art in flutterlan art in flutterland "),
                  leading: CircleAvatar(
                    backgroundColor: ColorSchemeLight.instance!.blue,
                    child: Text(
                      index.toString(),
                    ),
                  ),
                ),
                const Divider(
                  height: 1,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
