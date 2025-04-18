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
        'AG-Topzee is a mobile shoes store application focusing on a fast and streamlined shopping experience',
    // that provides a seamless shoe shopping experience.',
    // 'focusing on a fast and streamlined shopping experience.'
    githubLink: 'https://github.com/Topzee001/sneakers',
  ),
  ProjectUtils(
    image: 'assets/projects/quickMenu.png',
    title: 'QuickMenu',
    subtitle:
        // 'Quick Menu is a restaurant menu mobile app that transform the dinning experience by using NFC technology to provide customers with instant access to restaurants menus. By placing NFC tags on individual tables, users can simply tap their smartphones on the tag to view detailed and up-to-date menu information. This app enhances convenience, improves accuracy and offers a modern solution for both customers and restaurants admin.',
        'Quick Menu is a restaurant menu mobile app that transform the dinning experience by using NFC technology to provide customers with instant access to restaurants menus.',
    githubLink: 'https://github.com/Topzee001/quick_menu',
  ),
  ProjectUtils(
    image: 'assets/projects/estream.png',
    title: 'e.Stream',
    subtitle:
        // 'Quick Menu is a restaurant menu mobile app that transform the dinning experience by using NFC technology to provide customers with instant access to restaurants menus. By placing NFC tags on individual tables, users can simply tap their smartphones on the tag to view detailed and up-to-date menu information. This app enhances convenience, improves accuracy and offers a modern solution for both customers and restaurants admin.',
        'The Estream ERP Mobile App is a custom-built enterprise solution designed to digitize and streamline field and internal operations for Estream Networks. The app replaces traditional paper-based workflows with a modern mobile-first experience.',
    githubLink: null,
  ),
  ProjectUtils(
    image: 'assets/projects/e-com boilerplate.png',
    title: 'E-commerce boilerplate',
    subtitle:
        'A scalable e-commerce starter kit built with Flutter during the HNG Internship 11. It includes core features like user authentication, product listings, and account management, all integrated with pre-defined APIs.',
    githubLink: 'https://github.com/Omozuas/Flutter_Boilerplate_Hng11.git',
  ),
  ProjectUtils(
    image: 'assets/projects/telex.png',
    title: 'Telex',
    subtitle:
        // 'Telex is a cross-platform Flutter application built to unify real-time notifications, system events, and error reporting into a centralized hub. Designed with MVVM architecture and powered by Riverpod for state management, Telex offers a reliable and scalable solution for modern digital workspaces.',
        // 'A cross-platform Flutter app that centralizes real-time notifications, system events, and error reporting into a unified hub. Built with MVVM architecture and Riverpod, Telex leverages a lightweight agent to streamline event tracking across sources. It ensures secure, structured, and responsive access to critical data — all within a sleek Material Design 3 interface.',
        'App for managing real-time notifications, events, and error logs across platforms. It uses a lightweight agent to collect and streamline data from multiple sources, ensuring fast and reliable updates.',
    githubLink: null,
  ),
  // ProjectUtils(
  //   image: 'assets/projects/watches.png',
  //   title: 'Watchee',
  //   subtitle:
  //       // 'Watchee is a watch store application that provides a seamless luxury watches shopping experience, allowing users to browse products, add items to their cart, complete purchases, and view their order history.',
  //       'Watchee is a watch store application that provides a seamless luxury watches shopping experience, allowing users to browse products, add items to their cart and complete purchases',
  //   githubLink: 'https://github.com/Topzee001/watch-store-using-timbu-Api',
  // )
];
