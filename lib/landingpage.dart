// import 'package:fashionwebpageflutter/constants/colors.dart';
// import 'package:fashionwebpageflutter/nav_drawer.dart';
// import 'package:fashionwebpageflutter/styles.dart';
// import 'package:flutter/material.dart';

// class FashionWebLandingPage extends StatelessWidget {
//   const FashionWebLandingPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(kToolbarHeight),
//         child: FashionWebLandingPageNavbar(),
//       ),
//       drawer: NavDrawer(),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             FashionWebLandingPageHeader(),
//             FashionWebLandingPageContent(),
//             FashionWebLandingPageFooter(),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class FashionWebLandingPageNavbar extends StatelessWidget
//     implements PreferredSizeWidget {
//   const FashionWebLandingPageNavbar({super.key});

//   static const _navItems = ["CATALOGUE", "FASHION", "FAVOURITE", "LIFESTYLE"];

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final isMobile = screenWidth < 800;

//     return AppBar(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       automaticallyImplyLeading: false,
//       titleSpacing: 0,
//       centerTitle: false,
//       leading:
//           isMobile
//               ? Builder(
//                 builder:
//                     (context) => IconButton(
//                       icon: const Icon(Icons.menu, color: Colors.black),
//                       onPressed: () => Scaffold.of(context).openDrawer(),
//                     ),
//               )
//               : Container(),
//       // 🔹 Title: Logo
//       title: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 24),
//         child: Row(
//           children: [
//             // Logo
//             const Icon(Icons.shopping_bag, color: Colors.black, size: 28),
//             const SizedBox(width: 8),
//             const Text(
//               "FASHION",
//               style: TextStyle(
//                 fontSize: 22,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.black,
//               ),
//             ),
//             const Spacer(),

//             // 🔹 Desktop Menu Items
//             if (!isMobile)
//               Row(children: _navItems.map((item) => _navItem(item)).toList()),

//             const SizedBox(width: 16),

//             // 🔹 Sign Up Button
//             _button("SIGN UP"),

//             // 🔹 Mobile Menu Button
//           ],
//         ),
//       ),
//     );
//   }

//   /// 🔹 Navigation Item
//   static Widget _navItem(String title) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Text(
//         title,
//         style: const TextStyle(
//           fontSize: 16,
//           fontWeight: FontWeight.w500,
//           color: Colors.black,
//         ),
//       ),
//     );
//   }

//   /// 🔹 Sign Up Button
//   static Widget _button(String label) => ElevatedButton(
//     onPressed: () {},
//     style: ElevatedButton.styleFrom(
//       backgroundColor: Colors.black,
//       padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
//     ),
//     child: Text(label, style: const TextStyle(color: Colors.white)),
//   );

//   @override
//   Size get preferredSize => const Size.fromHeight(kToolbarHeight);
// }

// class FashionWebLandingPageHeader extends StatelessWidget {
//   const FashionWebLandingPageHeader({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final isMobile = screenWidth < 800;

//     return Column(
//       children: [
//         const SizedBox(height: 20),

//         // 🔹 Hero Section
//         Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
//           child:
//               isMobile
//                   ? Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       _buildTextSection(isMobile: true),
//                       const SizedBox(height: 20),
//                       _buildImageSection(),
//                     ],
//                   )
//                   : Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Expanded(
//                         flex: 5,
//                         child: _buildTextSection(isMobile: false),
//                       ),
//                       const SizedBox(width: 40),
//                       Expanded(flex: 5, child: _buildImageSection()),
//                     ],
//                   ),
//         ),
//       ],
//     );
//   }

//   /// 🔹 Navigation Item
//   static Widget _navItem(String title) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16),
//       child: Text(
//         title,
//         style: const TextStyle(
//           fontSize: 16,
//           fontWeight: FontWeight.w500,
//           color: Colors.black,
//         ),
//       ),
//     );
//   }

//   /// 🔹 Left Side → Text Content
//   Widget _buildTextSection({required bool isMobile}) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Big Heading with Highlight
//         RichText(
//           text: TextSpan(
//             children: [
//               TextSpan(
//                 text: "LET’S\nEXPLORE\n",
//                 style: TextStyle(
//                   fontSize: isMobile ? 28 : 92,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               TextSpan(
//                 text: "UNIQUE ",
//                 style: TextStyle(
//                   fontSize: isMobile ? 28 : 92,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   backgroundColor: Colors.yellow.shade300,
//                 ),
//               ),
//               TextSpan(
//                 text: "CLOTHES.",
//                 style: TextStyle(
//                   fontSize: isMobile ? 28 : 92,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//             ],
//           ),
//         ),

//         const SizedBox(height: 16),

//         // Subtitle
//         Text(
//           "Live for Influential and Innovative fashion!",
//           style: TextStyle(
//             fontSize: isMobile ? 14 : 16,
//             color: Colors.grey[700],
//           ),
//         ),

//         const SizedBox(height: 24),

//         // CTA Button
//         ElevatedButton(
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(
//             backgroundColor: Colors.black,
//             padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(8),
//             ),
//           ),
//           child: const Text(
//             "Shop Now",
//             style: TextStyle(fontSize: 16, color: Colors.white),
//           ),
//         ),
//       ],
//     );
//   }

//   /// 🔹 Right Side → Image
//   Widget _buildImageSection() {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(16),
//       child: Image.asset(
//         "assets/images/girl.png", // replace with your asset
//         fit: BoxFit.cover,
//       ),
//     );
//   }
// }

// class NewArrivalSection extends StatelessWidget {
//   const NewArrivalSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;

//     // Breakpoints
//     final isMobile = screenWidth < 600;
//     final isTablet = screenWidth >= 600 && screenWidth < 1024;

//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SizedBox(height: 20.0),

//         // Title
//         RichText(
//           text: TextSpan(
//             children: [
//               TextSpan(
//                 text: "NEW ",
//                 style: TextStyle(
//                   fontSize:
//                       isMobile
//                           ? 22
//                           : isTablet
//                           ? 26
//                           : 32,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                 ),
//               ),
//               TextSpan(
//                 text: "ARRIVALS",
//                 style: TextStyle(
//                   fontSize:
//                       isMobile
//                           ? 22
//                           : isTablet
//                           ? 26
//                           : 32,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   backgroundColor: Colors.yellow.shade300,
//                 ),
//               ),
//             ],
//           ),
//         ),

//         const SizedBox(height: 24),

//         // Cards Layout
//         if (isMobile)
//           Column(
//             children: [
//               _buildArrivalCard(
//                 image: "assets/images/new_arrival_one.png",
//                 title: "Hoodies",
//                 subtitle: "Explore Now",
//               ),
//               const SizedBox(height: 20),
//               _buildArrivalCard(
//                 image: "assets/images/new_arrival_two.png",
//                 title: "Coats & Parkas",
//                 subtitle: "Explore Now",
//               ),
//               const SizedBox(height: 20),
//               _buildArrivalCard(
//                 image: "assets/images/new_arrival_three.png",
//                 title: "Tees & T-Shirt",
//                 subtitle: "Explore Now",
//               ),
//             ],
//           )
//         else
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Expanded(
//                 child: _buildArrivalCard(
//                   image: "assets/images/new_arrival_one.png",
//                   title: "Hoodies",
//                   subtitle: "Explore Now",
//                 ),
//               ),
//               const SizedBox(width: 20),
//               Expanded(
//                 child: _buildArrivalCard(
//                   image: "assets/images/new_arrival_two.png",
//                   title: "Coats & Parkas",
//                   subtitle: "Explore Now",
//                 ),
//               ),
//               const SizedBox(width: 20),
//               Expanded(
//                 child: _buildArrivalCard(
//                   image: "assets/images/new_arrival_three.png",
//                   title: "Tees & T-Shirt",
//                   subtitle: "Explore Now",
//                 ),
//               ),
//             ],
//           ),
//       ],
//     );
//   }

//   // Reusable Card Widget
//   Widget _buildArrivalCard({
//     required String image,
//     required String title,
//     required String subtitle,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Image
//         ClipRRect(
//           borderRadius: BorderRadius.circular(16),
//           child: Image.asset(
//             image,
//             height: 320, // same as your design
//             width: double.infinity,
//             fit: BoxFit.cover,
//           ),
//         ),

//         const SizedBox(height: 12),

//         // Title
//         Text(
//           title,
//           style: const TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),

//         const SizedBox(height: 6),
//         Text(
//           subtitle,
//           style: const TextStyle(fontSize: 16, color: Colors.grey),
//         ),
//         const SizedBox(width: 6),
//       ],
//     );
//   }
// }

// class YoungFavouriteSection extends StatelessWidget {
//   const YoungFavouriteSection({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;

//     // Breakpoints
//     final isMobile = screenWidth < 600;
//     final isTablet = screenWidth >= 600 && screenWidth < 1024;

//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 26),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           NewArrivalSection(),
//           const SizedBox(height: 24),
//           Image.asset("assets/images/banner.png"),
//           SizedBox(height: 20.0),

//           RichText(
//             text: TextSpan(
//               children: [
//                 TextSpan(
//                   text: "Young’s ",
//                   style: TextStyle(
//                     fontSize:
//                         isMobile
//                             ? 22
//                             : isTablet
//                             ? 26
//                             : 32,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 ),
//                 TextSpan(
//                   text: "Favourite",
//                   style: TextStyle(
//                     fontSize:
//                         isMobile
//                             ? 22
//                             : isTablet
//                             ? 26
//                             : 32,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                     backgroundColor: Colors.yellow.shade300,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 24),

//           // Cards Layout
//           isMobile
//               ? Column(
//                 children: [
//                   _buildFavouriteCard(
//                     image: "assets/images/young_fav_one.png",
//                     title: "Trending on Instagram",
//                     subtitle: "Explore Now",
//                   ),
//                   const SizedBox(height: 20),
//                   _buildFavouriteCard(
//                     image: "assets/images/young_fav_two.png",
//                     title: "All Under \$40",
//                     subtitle: "Explore Now",
//                   ),
//                 ],
//               )
//               : Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Expanded(
//                     child: _buildFavouriteCard(
//                       image: "assets/images/young_fav_one.png",
//                       title: "Trending on Instagram",
//                       subtitle: "Explore Now",
//                     ),
//                   ),
//                   const SizedBox(width: 20),
//                   Expanded(
//                     child: _buildFavouriteCard(
//                       image: "assets/images/young_fav_two.png",
//                       title: "All Under \$40",
//                       subtitle: "Explore Now",
//                     ),
//                   ),
//                 ],
//               ),
//         ],
//       ),
//     );
//   }

//   // Reusable Card Widget
//   Widget _buildFavouriteCard({
//     required String image,
//     required String title,
//     required String subtitle,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         // Image
//         ClipRRect(
//           borderRadius: BorderRadius.circular(12),
//           child: Image.asset(
//             image,
//             height: 280,
//             width: double.infinity,
//             fit: BoxFit.cover,
//           ),
//         ),

//         const SizedBox(height: 12),

//         // Title
//         Text(
//           title,
//           style: const TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
//           ),
//         ),

//         const SizedBox(height: 14),
//         Text(
//           subtitle,
//           style: const TextStyle(fontSize: 16, color: Colors.grey),
//         ),
//       ],
//     );
//   }
// }

// class FashionWebLandingPageContent extends StatefulWidget {
//   const FashionWebLandingPageContent({super.key});

//   @override
//   State<FashionWebLandingPageContent> createState() =>
//       _FashionWebLandingPageContentState();
// }

// class _FashionWebLandingPageContentState
//     extends State<FashionWebLandingPageContent> {
//   List<Image> brandImages = [
//     Image.asset("assets/images/brand_one.png"),
//     Image.asset("assets/images/brand_two.png"),
//     Image.asset("assets/images/brand_three.png"),
//     Image.asset("assets/images/brand_four.png"),
//     Image.asset("assets/images/brand_five.png"),
//     Image.asset("assets/images/brand_six.png"),
//   ];

//   /// Store badge (Play Store / App Store)
//   Widget _buildStoreBadge() {
//     return Image.asset("assets/images/playstore.png", fit: BoxFit.cover);
//   }

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;

//     // Breakpoints
//     final isMobile = screenWidth < 600;
//     final isTablet = screenWidth >= 600 && screenWidth < 1024;

//     return Column(
//       children: [
//         Container(
//           color: FashionWebpageColors.yellowColor,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: List.generate(
//               brandImages.length,
//               (index) => Flexible(
//                 child: Padding(
//                   padding: const EdgeInsets.all(25.0),
//                   child: brandImages[index],
//                 ),
//               ),
//             ),
//           ),
//         ),
//         // seperate widget
//         YoungFavouriteSection(),
//         Container(
//           padding: EdgeInsets.symmetric(
//             vertical: MediaQuery.of(context).size.width < 600 ? 24 : 100,
//             horizontal: MediaQuery.of(context).size.width < 600 ? 16 : 100,
//           ),
//           child: _buildStoreBadge(),
//         ),
//         Container(
//           width: double.infinity,
//           color:
//               FashionWebpageColors
//                   .yellowColor, // FashionWebpageColors.yellowColor
//           padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               // Title
//               Text(
//                 "JOIN SHOPPING COMMUNITY TO GET MONTHLY PROMO",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: screenWidth < 600 ? 20 : 30,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                   height: 1.3,
//                 ),
//               ),

//               const SizedBox(height: 16),

//               // Subtitle
//               Text(
//                 "Type your email down below and be young wild generation",
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: screenWidth < 600 ? 14 : 18,
//                   color: Colors.white.withOpacity(0.8),
//                   height: 1.4,
//                 ),
//               ),
//               const SizedBox(height: 32),
//               // Email & Button Row
//               SizedBox(
//                 width:
//                     screenWidth < 600
//                         ? double.infinity
//                         : 500, // Responsive width
//                 child: Row(
//                   children: [
//                     // Email Input
//                     Expanded(
//                       child: TextField(
//                         decoration: InputDecoration(
//                           hintText: "Add your email here",
//                           hintStyle: const TextStyle(
//                             color: Colors.black54,
//                             fontSize: 14,
//                           ),
//                           contentPadding: const EdgeInsets.symmetric(
//                             horizontal: 16,
//                             vertical: 16,
//                           ),
//                           filled: true,
//                           fillColor: Colors.white,
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(6),
//                             borderSide: BorderSide.none,
//                           ),
//                         ),
//                       ),
//                     ),

//                     const SizedBox(width: 8),

//                     // SEND Button
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.black,
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 24,
//                           vertical: 18,
//                         ),
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(6),
//                         ),
//                       ),
//                       onPressed: () {
//                         // Handle submit
//                       },
//                       child: const Text(
//                         "SEND",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontWeight: FontWeight.bold,
//                           letterSpacing: 1,
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }

// class FashionWebLandingPageFooter extends StatelessWidget {
//   const FashionWebLandingPageFooter({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = MediaQuery.of(context).size.width;
//     final isMobile = screenWidth < 600;

//     return Container(
//       color: Colors.black,
//       padding: EdgeInsets.symmetric(
//         vertical: isMobile ? 24 : 40,
//         horizontal: isMobile ? 16 : 80,
//       ),
//       child:
//           isMobile
//               ? Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   _buildBrandSection(isMobile),
//                   const SizedBox(height: 24),
//                   _buildLinksSection(isMobile: true),
//                 ],
//               )
//               : Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Expanded(flex: 2, child: _buildBrandSection(isMobile)),
//                   Expanded(flex: 3, child: _buildLinksSection(isMobile: false)),
//                 ],
//               ),
//     );
//   }

//   /// Brand + tagline + social icons
//   Widget _buildBrandSection(bool isMobile) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "FASHION",
//           style: AppFonts.medium(
//             fontSize: isMobile ? 20 : 24,
//             color: FashionWebpageColors.whiteColor,
//           ),
//         ),
//         const SizedBox(height: 8),
//         Text(
//           "Complete your style with awesome\nclothes from us.",
//           style: AppFonts.regular(
//             fontSize: isMobile ? 14 : 18,
//             color: FashionWebpageColors.greyColor,
//           ),
//         ),
//         const SizedBox(height: 16),
//         Row(
//           children: [
//             _socialIcon(Icons.facebook),
//             _socialIcon(Icons.camera_alt),
//             _socialIcon(Icons.chat),
//             _socialIcon(Icons.web),
//           ],
//         ),
//       ],
//     );
//   }

//   /// Footer links section
//   Widget _buildLinksSection({required bool isMobile}) {
//     final sections = {
//       "Company": ["About", "Contact us", "Support", "Careers"],
//       "Quick Link": ["Share Location", "Order Tracking", "Size Guide", "FAQs"],
//       "Legal": ["Terms & conditions", "Privacy Policy"],
//     };

//     return isMobile
//         ? Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children:
//               sections.entries
//                   .map(
//                     (entry) => Padding(
//                       padding: const EdgeInsets.only(bottom: 16),
//                       child: _buildLinkColumn(entry.key, entry.value, isMobile),
//                     ),
//                   )
//                   .toList(),
//         )
//         : Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           mainAxisAlignment:
//               MainAxisAlignment
//                   .spaceBetween, // Distributes space between columns
//           children:
//               sections.entries
//                   .map(
//                     (entry) =>
//                         _buildLinkColumn(entry.key, entry.value, isMobile),
//                   )
//                   .toList(),
//         );
//   }

//   /// Each section
//   Widget _buildLinkColumn(String title, List<String> links, bool isMobile) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           title,
//           style: AppFonts.regular(
//             fontSize: isMobile ? 16 : 20,
//             color: FashionWebpageColors.whiteColor,
//           ),
//         ),
//         const SizedBox(height: 10),
//         ...links.map(
//           (link) => Padding(
//             padding: const EdgeInsets.only(bottom: 6),
//             child: Text(
//               link,
//               style: AppFonts.regular(
//                 fontSize: isMobile ? 14 : 18,
//                 color: FashionWebpageColors.greyColor,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }

//   /// Social icon widget
//   static Widget _socialIcon(IconData icon) {
//     return Container(
//       margin: const EdgeInsets.only(right: 12),
//       padding: const EdgeInsets.all(8),
//       decoration: BoxDecoration(
//         color: Colors.yellow,
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: Icon(icon, color: Colors.black, size: 20),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:fashionwebpageflutter/constants/colors.dart';
import 'package:fashionwebpageflutter/nav_drawer.dart';
import 'package:fashionwebpageflutter/styles.dart';

class FashionWebLandingPage extends StatelessWidget {
  const FashionWebLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: FashionWebLandingPageNavbar(),
      ),
      drawer: const NavDrawer(),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            FashionWebLandingPageHeader(),
            FashionWebLandingPageContent(),
            FashionWebLandingPageFooter(),
          ],
        ),
      ),
    );
  }
}

// ---------------- NAVBAR ----------------
class FashionWebLandingPageNavbar extends StatelessWidget
    implements PreferredSizeWidget {
  const FashionWebLandingPageNavbar({super.key});

  static const _navItems = ["CATALOGUE", "FASHION", "FAVOURITE", "LIFESTYLE"];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 800;

    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      leading:
          isMobile
              ? Builder(
                builder:
                    (context) => IconButton(
                      icon: const Icon(
                        Icons.menu,
                        color: FashionWebpageColors.blackColor,
                      ),
                      onPressed: () => Scaffold.of(context).openDrawer(),
                    ),
              )
              : null,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            const Icon(
              Icons.shopping_bag,
              color: FashionWebpageColors.blackColor,
              size: 28,
            ),
            const SizedBox(width: 8),
            Text(
              "FASHION",
              style: AppFonts.black(
                fontSize: 22,
                color: FashionWebpageColors.blackColor,
              ),
            ),
            const Spacer(),
            if (!isMobile)
              Row(children: _navItems.map((item) => _navItem(item)).toList()),
            const SizedBox(width: 16),
            _button("SIGN UP"),
          ],
        ),
      ),
    );
  }

  static Widget _navItem(String title) => Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: Text(
      title,
      style: AppFonts.medium(
        fontSize: 16,
        color: FashionWebpageColors.blackColor,
      ),
    ),
  );

  static Widget _button(String label) => ElevatedButton(
    onPressed: () {},
    style: ElevatedButton.styleFrom(
      backgroundColor: FashionWebpageColors.blackColor,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    ),
    child: Text(
      label,
      style: AppFonts.medium(
        fontSize: 14,
        color: FashionWebpageColors.whiteColor,
      ),
    ),
  );

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

// ---------------- HEADER ----------------
class FashionWebLandingPageHeader extends StatelessWidget {
  const FashionWebLandingPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 800;

    return isMobile
        ? Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextSection(isMobile: true),
              const SizedBox(height: 20),
              _buildImageSection(),
            ],
          ),
        )
        : Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            children: [
              Expanded(flex: 5, child: _buildTextSection(isMobile: false)),
              const SizedBox(width: 40),
              Expanded(flex: 5, child: _buildImageSection()),
            ],
          ),
        );
  }

  Widget _buildTextSection({required bool isMobile}) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "LET’S\nEXPLORE\n",
              style: AppFonts.black(
                fontSize: isMobile ? 28 : 62,
                color: FashionWebpageColors.blackColor,
              ),
            ),
            TextSpan(
              text: "UNIQUE ",
              style: AppFonts.black(
                fontSize: isMobile ? 28 : 62,
                color: FashionWebpageColors.blackColor,
              ).copyWith(backgroundColor: FashionWebpageColors.yellowColor),
            ),
            TextSpan(
              text: "CLOTHES.",
              style: AppFonts.black(
                fontSize: isMobile ? 28 : 62,
                color: FashionWebpageColors.blackColor,
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 16),
      Text(
        "Live for Influential and Innovative fashion!",
        style: AppFonts.regular(
          fontSize: isMobile ? 14 : 16,
          color: FashionWebpageColors.greyColor,
        ),
      ),
      const SizedBox(height: 24),
      ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: FashionWebpageColors.blackColor,
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: Text(
          "Shop Now",
          style: AppFonts.medium(
            fontSize: 16,
            color: FashionWebpageColors.whiteColor,
          ),
        ),
      ),
    ],
  );

  Widget _buildImageSection() => ClipRRect(
    borderRadius: BorderRadius.circular(16),
    child: Image.asset("assets/images/girl.png", fit: BoxFit.cover),
  );
}

// ---------------- NEW ARRIVALS ----------------
class NewArrivalSection extends StatelessWidget {
  const NewArrivalSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;
    final isTablet = screenWidth >= 600 && screenWidth < 1024;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20.0),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "NEW ",
                style: AppFonts.black(
                  fontSize: isMobile ? 22 : (isTablet ? 26 : 32),
                  color: FashionWebpageColors.blackColor,
                ),
              ),
              TextSpan(
                text: "ARRIVALS",
                style: AppFonts.black(
                  fontSize: isMobile ? 22 : (isTablet ? 26 : 32),
                  color: FashionWebpageColors.blackColor,
                ).copyWith(backgroundColor: FashionWebpageColors.yellowColor),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        if (isMobile)
          Column(
            children: [
              _buildArrivalCard(
                image: "assets/images/new_arrival_one.png",
                title: "Hoodies",
                subtitle: "Explore Now",
              ),
              const SizedBox(height: 20),
              _buildArrivalCard(
                image: "assets/images/new_arrival_two.png",
                title: "Coats & Parkas",
                subtitle: "Explore Now",
              ),
              const SizedBox(height: 20),
              _buildArrivalCard(
                image: "assets/images/new_arrival_three.png",
                title: "Tees & T-Shirt",
                subtitle: "Explore Now",
              ),
            ],
          )
        else
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: _buildArrivalCard(
                  image: "assets/images/new_arrival_one.png",
                  title: "Hoodies",
                  subtitle: "Explore Now",
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: _buildArrivalCard(
                  image: "assets/images/new_arrival_two.png",
                  title: "Coats & Parkas",
                  subtitle: "Explore Now",
                ),
              ),
              const SizedBox(width: 20),
              Expanded(
                child: _buildArrivalCard(
                  image: "assets/images/new_arrival_three.png",
                  title: "Tees & T-Shirt",
                  subtitle: "Explore Now",
                ),
              ),
            ],
          ),
      ],
    );
  }

  Widget _buildArrivalCard({
    required String image,
    required String title,
    required String subtitle,
  }) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Image.asset(
          image,
          height: 320,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(height: 12),
      Text(
        title,
        style: AppFonts.black(
          fontSize: 18,
          color: FashionWebpageColors.blackColor,
        ),
      ),
      const SizedBox(height: 6),
      Text(
        subtitle,
        style: AppFonts.regular(
          fontSize: 16,
          color: FashionWebpageColors.greyColor,
        ),
      ),
    ],
  );
}

// ---------------- YOUNG FAVOURITE ----------------
class YoungFavouriteSection extends StatelessWidget {
  const YoungFavouriteSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;
    final isTablet = screenWidth >= 600 && screenWidth < 1024;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const NewArrivalSection(),
          const SizedBox(height: 24),
          Image.asset("assets/images/banner.png"),
          const SizedBox(height: 20.0),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Young’s ",
                  style: AppFonts.black(
                    fontSize: isMobile ? 22 : (isTablet ? 26 : 32),
                    color: FashionWebpageColors.blackColor,
                  ),
                ),
                TextSpan(
                  text: "Favourite",
                  style: AppFonts.black(
                    fontSize: isMobile ? 22 : (isTablet ? 26 : 32),
                    color: FashionWebpageColors.blackColor,
                  ).copyWith(backgroundColor: FashionWebpageColors.yellowColor),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          isMobile
              ? Column(
                children: [
                  _buildFavouriteCard(
                    image: "assets/images/young_fav_one.png",
                    title: "Trending on Instagram",
                    subtitle: "Explore Now",
                  ),
                  const SizedBox(height: 20),
                  _buildFavouriteCard(
                    image: "assets/images/young_fav_two.png",
                    title: "All Under \$40",
                    subtitle: "Explore Now",
                  ),
                ],
              )
              : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: _buildFavouriteCard(
                      image: "assets/images/young_fav_one.png",
                      title: "Trending on Instagram",
                      subtitle: "Explore Now",
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: _buildFavouriteCard(
                      image: "assets/images/young_fav_two.png",
                      title: "All Under \$40",
                      subtitle: "Explore Now",
                    ),
                  ),
                ],
              ),
        ],
      ),
    );
  }

  Widget _buildFavouriteCard({
    required String image,
    required String title,
    required String subtitle,
  }) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          image,
          height: 280,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
      ),
      const SizedBox(height: 12),
      Text(
        title,
        style: AppFonts.black(
          fontSize: 18,
          color: FashionWebpageColors.blackColor,
        ),
      ),
      const SizedBox(height: 14),
      Text(
        subtitle,
        style: AppFonts.regular(
          fontSize: 16,
          color: FashionWebpageColors.greyColor,
        ),
      ),
    ],
  );
}

// ---------------- CONTENT WRAPPER ----------------
class FashionWebLandingPageContent extends StatelessWidget {
  const FashionWebLandingPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 600;

    return Column(
      children: [
        // Brand strip
        // ✅ Brand Strip Section
        Container(
          color: FashionWebpageColors.yellowColor,
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final isMobile = constraints.maxWidth < 800;

              if (isMobile) {
                // Wrap for responsive grid-like layout
                return Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 20,
                  runSpacing: 20,
                  children: const [
                    _BrandLogo(path: "assets/images/brand_one.png"),
                    _BrandLogo(path: "assets/images/brand_two.png"),
                    _BrandLogo(path: "assets/images/brand_three.png"),
                    _BrandLogo(path: "assets/images/brand_four.png"),
                    _BrandLogo(path: "assets/images/brand_five.png"),
                    _BrandLogo(path: "assets/images/brand_six.png"),
                  ],
                );
              }

              // Desktop / Tablet - Row
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  _BrandLogo(path: "assets/images/brand_one.png"),
                  _BrandLogo(path: "assets/images/brand_two.png"),
                  _BrandLogo(path: "assets/images/brand_three.png"),
                  _BrandLogo(path: "assets/images/brand_four.png"),
                  _BrandLogo(path: "assets/images/brand_five.png"),
                  _BrandLogo(path: "assets/images/brand_six.png"),
                ],
              );
            },
          ),
        ),

        const YoungFavouriteSection(),

        // Store badge (Play Store)
        Padding(
          padding: EdgeInsets.symmetric(
            vertical: isMobile ? 24 : 100,
            horizontal: isMobile ? 16 : 100,
          ),
          child: Image.asset("assets/images/playstore.png", fit: BoxFit.cover),
        ),

        // Newsletter CTA
        Container(
          width: double.infinity,
          color: FashionWebpageColors.yellowColor,
          padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 24),
          child: Column(
            children: [
              Text(
                "JOIN SHOPPING COMMUNITY TO GET MONTHLY PROMO",
                textAlign: TextAlign.center,
                style: AppFonts.black(
                  fontSize: isMobile ? 20 : 30,
                  color: FashionWebpageColors.whiteColor,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                "Type your email down below and be young wild generation",
                textAlign: TextAlign.center,
                style: AppFonts.regular(
                  fontSize: isMobile ? 14 : 18,
                  color: FashionWebpageColors.whiteColor.withOpacity(0.8),
                ),
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: isMobile ? double.infinity : 500,
                child:
                    isMobile
                        ? Column(
                          children: [
                            _emailField(),
                            const SizedBox(height: 12),
                            _sendButton(),
                          ],
                        )
                        : Row(
                          children: [
                            Expanded(child: _emailField()),
                            const SizedBox(width: 8),
                            _sendButton(),
                          ],
                        ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  static Widget _emailField() => TextField(
    decoration: InputDecoration(
      hintText: "Add your email here",
      hintStyle: AppFonts.regular(
        fontSize: 14,
        color: FashionWebpageColors.blackColor.withOpacity(0.6),
      ),
      filled: true,
      fillColor: FashionWebpageColors.whiteColor,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide.none,
      ),
    ),
  );

  static Widget _sendButton() => ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: FashionWebpageColors.blackColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
    ),
    onPressed: () {},
    child: Text(
      "SEND",
      style: AppFonts.medium(
        fontSize: 14,
        color: FashionWebpageColors.whiteColor,
      ),
    ),
  );
}

class _BrandLogo extends StatelessWidget {
  final String path;
  const _BrandLogo({required this.path});

  @override
  Widget build(BuildContext context) {
    return Image.asset(path, height: 40);
  }
}

// ---------------- FOOTER ----------------
// ---------------- FOOTER ----------------
class FashionWebLandingPageFooter extends StatelessWidget {
  const FashionWebLandingPageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 800;

    final sections = {
      "Company": ["About", "Contact us", "Support", "Careers"],
      "Quick Link": ["Share Location", "Orders Tracking", "Size Guide", "FAQs"],
      "Legal": ["Terms & conditions", "Privacy Policy"],
    };

    return Container(
      width: double.infinity, // ✅ makes footer full width
      color: FashionWebpageColors.blackColor,
      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 32 : 48,
        horizontal: isMobile ? 20 : 80, // ✅ balanced padding
      ),
      child:
          isMobile
              ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildBrandSection(isMobile),
                  const SizedBox(height: 32),
                  ...sections.entries.map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(bottom: 24),
                      child: _buildLinkColumn(e.key, e.value, isMobile),
                    ),
                  ),
                ],
              )
              : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Left: Brand
                  Expanded(flex: 2, child: _buildBrandSection(isMobile)),

                  // Right: Sections
                  Expanded(
                    flex: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children:
                          sections.entries
                              .map(
                                (e) =>
                                    _buildLinkColumn(e.key, e.value, isMobile),
                              )
                              .toList(),
                    ),
                  ),
                ],
              ),
    );
  }

  Widget _buildBrandSection(bool isMobile) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        "FASHION",
        style: AppFonts.medium(
          fontSize: isMobile ? 20 : 22,
          color: FashionWebpageColors.whiteColor,
        ),
      ),
      const SizedBox(height: 12),
      Text(
        "Complete your style with awesome\nclothes from us.",
        style: AppFonts.regular(
          fontSize: isMobile ? 14 : 16,
          color: FashionWebpageColors.greyColor,
        ),
      ),
      const SizedBox(height: 20),
      Wrap(
        spacing: 10,
        children: const [
          _SocialIcon(icon: Icons.facebook),
          _SocialIcon(icon: Icons.camera_alt),
          _SocialIcon(icon: Icons.chat),
          _SocialIcon(icon: Icons.web),
        ],
      ),
    ],
  );

  Widget _buildLinkColumn(String title, List<String> links, bool isMobile) =>
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppFonts.medium(
              fontSize: isMobile ? 16 : 18,
              color: FashionWebpageColors.whiteColor,
            ),
          ),
          const SizedBox(height: 14),
          ...links.map(
            (link) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(
                link,
                style: AppFonts.regular(
                  fontSize: isMobile ? 14 : 16,
                  color: FashionWebpageColors.greyColor,
                ),
              ),
            ),
          ),
        ],
      );
}

class _SocialIcon extends StatelessWidget {
  final IconData icon;
  const _SocialIcon({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: FashionWebpageColors.yellowColor,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Icon(icon, color: FashionWebpageColors.blackColor, size: 20),
    );
  }
}
