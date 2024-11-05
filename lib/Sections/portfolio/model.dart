class ProjectUtils {
  final String image;
  final String title;
  final String subtitle;
  final String? androidLink;
  final String? iosLink;
  final String? webLink;
  final String? githubLink;

  ProjectUtils({
    required this.image,
    required this.title,
    required this.subtitle,
    this.androidLink,
    this.iosLink,
    this.webLink,
    this.githubLink,
  });
}

List<ProjectUtils> personalProjectUtils = [
  ProjectUtils(
    image: 'assets/projects/shoes.png',
    title: 'AG-Topzee',
    subtitle:
        // 'AG-Topzee is a mobile shoes store application that provides a seamless shoe shopping experience, allowing users to browse products, add items to their cart, complete purchases, and view their order history.',
        'AG-Topzee is a mobile shoes store application that provides a seamless shoe shopping experience.',
    githubLink: 'https://github.com/Topzee001/sneakers',
  ),
  ProjectUtils(
    image: 'assets/projects/quickMenu.png',
    title: 'QuickMenu',
    subtitle:
        'Quick Menu is a restaurant menu mobile app that transform the dinning experience by using NFC technology to provide customers with instant access to restaurants menus. By placing NFC tags on individual tables, users can simply tap their smartphones on the tag to view detailed and up-to-date menu information. This app enhances convenience, improves accuracy and offers a modern solution for both customers and restaurants admin.',
    githubLink: 'https://github.com/Topzee001/quick_menu',
  ),
  ProjectUtils(
    image: 'assets/projects/watches.png',
    title: 'Watchee',
    subtitle:
        'Watchee is a watch store application that provides a seamless luxury watches shopping experience, allowing users to browse products, add items to their cart, complete purchases, and view their order history.',
    githubLink: 'https://github.com/Topzee001/watch-store-using-timbu-Api',
  )
];
