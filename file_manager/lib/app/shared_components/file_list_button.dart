import 'package:file_manager/app/constans/app_constants.dart';
import 'package:file_manager/app/utils/helpers/app_helpers.dart';
import 'package:filesize/filesize.dart';
import 'package:flutter/material.dart';

class FileDetail {
  final String name;
  final int size;
  final FileType type;

  const FileDetail({
    required this.name,
    required this.size,
    required this.type,
  });
}

class FileListButton extends StatelessWidget {
  const FileListButton({
    required this.data,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final FileDetail data;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(5),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      shadowColor: Colors.white,
      child: ListTile(
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: Colors.red,
            gradient: _gradient(data.type),
            borderRadius: BorderRadius.circular(10),
          ),
          child: _icon(data.type),
        ),
        title: Text(
          data.name,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
          filesize(data.size),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        tileColor: Colors.white,
        onTap: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.more_vert_outlined),
          tooltip: "more",
        ),
      ),
    );
  }

  Widget _icon(FileType type) {
    late IconData iconData;

    switch (type) {
      case FileType.msAccess:
        iconData = CustomIcons.ms_access;
        break;
      case FileType.msExcel:
        iconData = CustomIcons.ms_excel;
        break;
      case FileType.msOutlook:
        iconData = CustomIcons.ms_outlook;
        break;
      case FileType.msPowerPoint:
        iconData = CustomIcons.ms_power_point;
        break;
      case FileType.msWord:
        iconData = CustomIcons.ms_word;
        break;
      default:
        iconData = Icons.extension;
        break;
    }

    return Icon(
      iconData,
      color: Colors.white,
    );
  }

  LinearGradient _gradient(FileType type) {
    switch (type) {
      case FileType.msAccess:
        return LinearGradient(colors: [
          Colors.redAccent,
          Colors.red,
        ]);
      case FileType.msExcel:
        return LinearGradient(colors: [
          Colors.greenAccent,
          Colors.green,
        ]);
      case FileType.msOutlook:
        return LinearGradient(colors: [
          Colors.lightBlueAccent,
          Colors.lightBlue,
        ]);
      case FileType.msPowerPoint:
        return LinearGradient(colors: [
          Colors.orangeAccent,
          Colors.orange,
        ]);
      case FileType.msWord:
        return LinearGradient(colors: [
          Colors.blueAccent,
          Colors.blue,
        ]);
      default:
        return LinearGradient(colors: [
          Colors.deepOrangeAccent,
          Colors.deepOrange,
        ]);
    }
  }
}
