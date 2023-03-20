import 'package:flutter/material.dart';
import './model/mobilelegend_model.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.mobileLegend,
    required this.isDone,
    required this.onCheckboxClick,
  });
  final MobileLegend mobileLegend;
  final bool isDone;
  final Function(bool? value) onCheckboxClick;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isDone ? Colors.white60 : Colors.white,
      child: ListTile(
        leading: Container(
          width: 100,
          height: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(mobileLegend.banner),
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: Text(mobileLegend.nama),
        subtitle: Text(mobileLegend.role),
        trailing: Checkbox(
          checkColor: Colors.blueAccent,
          value: isDone,
          onChanged: onCheckboxClick,
        ),
      ),
    );
  }
}
