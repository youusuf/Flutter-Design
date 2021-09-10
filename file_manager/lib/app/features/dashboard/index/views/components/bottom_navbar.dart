part of dashboard;

class _BottomNavbar extends StatelessWidget {
  _BottomNavbar({required this.onSelected, Key? key}) : super(key: key);

  final Function(int index) onSelected;
  final index = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => BottomNavigationBar(
        currentIndex: index.value,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        selectedIconTheme: IconThemeData(
          size: 28,
        ),
        items: [
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.home_outlined),
            activeIcon: Icon(CustomIcons.home_solid),
            tooltip: "home",
            label: "home",
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.folder_empty),
            activeIcon: Icon(CustomIcons.folder),
            label: "folder",
            tooltip: "folder",
          ),
          BottomNavigationBarItem(
            icon: Icon(CustomIcons.cloud_outlined),
            activeIcon: Icon(CustomIcons.cloud_solid),
            label: "cloud",
            tooltip: "cloud",
          ),
        ],
        onTap: (value) {
          index.value = value;
          onSelected(value);
        },
      ),
    );
  }
}
