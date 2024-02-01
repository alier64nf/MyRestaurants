import 'package:flutter/material.dart';

import '../../../communs_widgets/Headers/hedear_title.dart';

// ignore: must_be_immutable
class ListTilesSelectd extends StatefulWidget {
  String texto;
  bool isActive;

  ListTilesSelectd({super.key, required this.texto, required this.isActive});

  @override
  State<ListTilesSelectd> createState() => _ListTilesSelectdState();
}

class _ListTilesSelectdState extends State<ListTilesSelectd> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        //Al hacer click en el objeto lo marca si esta desmarcado y lo marca en caso contrario
        setState(() => (widget.isActive = !widget.isActive))
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          headerTitle(
              context,
              widget.texto,
              !widget.isActive
                  ? Theme.of(context).disabledColor
                  : Theme.of(context).colorScheme.onPrimary,
              Theme.of(context).textTheme.titleLarge!,
              FontWeight.normal),
          Icon(Icons.check,
              color: widget.isActive
                  ? Theme.of(context).colorScheme.onPrimary
                  : Theme.of(context).colorScheme.onBackground),
        ],
      ),
    );
  }
}
