import 'package:fashionwebpageflutter/constants/colors.dart';
import 'package:fashionwebpageflutter/service/auth_services.dart';
import 'package:fashionwebpageflutter/styles.dart';
import 'package:flutter/material.dart';
import 'nav_drawer.dart';

class FashionWebLandingPage extends StatelessWidget {
  const FashionWebLandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isMobile = screenWidth < 800;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: FashionWebLandingPageNavbar(isMobile: isMobile),
      ),
      drawer: isMobile ? const NavDrawer() : null,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            FashionWebLandingPageHeader(),
            FashionWebLandingPageContent(),
            FashionWebLandingPageFooter(),
          ],
        ),
      ),
    );
  }
}

class FashionWebLandingPageNavbar extends StatelessWidget
    implements PreferredSizeWidget {
  final bool isMobile;
  const FashionWebLandingPageNavbar({super.key, required this.isMobile});

  static const _navItems = ["CATALOGUE", "FASHION", "FAVOURITE", "LIFESTYLE"];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      centerTitle: false,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            const Text(
              "FASHION",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 24),
            if (!isMobile)
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                      _navItems
                          .map(
                            (item) => Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 16,
                              ),
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                          )
                          .toList(),
                ),
              ),
            const Spacer(),
            if (!isMobile)
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(Icons.search),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(Icons.person),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(Icons.shopping_bag),
                  ),
                ],
              ),
            if (isMobile)
              IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class FashionWebLandingPageHeader extends StatelessWidget {
  const FashionWebLandingPageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 32 : 64,
        horizontal: 16,
      ),
      color: FashionWebpageColors.lightwhitecolor,
      child:
          isMobile
              ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildHeaderContent(isMobile),
              )
              : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildHeaderContent(isMobile),
              ),
    );
  }

  List<Widget> _buildHeaderContent(bool isMobile) {
    return [
      Expanded(
        flex: isMobile ? 0 : 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "LET'S EXPLORE UNIQUE CLOTHES.",
              style: AppFonts.black(
                fontSize: isMobile ? 36 : 72,
                color: FashionWebpageColors.blackColor,
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              "Live for the moment, dress for the occasion. We make sure you're the best dressed wherever you go.",
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: FashionWebpageColors.blackColor,
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 16,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: Text(
                "SHOP NOW",
                style: AppFonts.regular(
                  fontSize: 16,
                  color: FashionWebpageColors.whiteColor,
                ),
              ),
            ),
          ],
        ),
      ),
      if (!isMobile) const SizedBox(width: 32),
      Expanded(
        flex: isMobile ? 0 : 3,
        child: Center(
          child: SizedBox(
            height: isMobile ? 300 : 500,
            width: isMobile ? 300 : 500,
            child: Image.asset(
              "assets/images/image_882f76.png",
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
    ];
  }
}

class FashionWebLandingPageContent extends StatelessWidget {
  const FashionWebLandingPageContent({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount =
        screenWidth < 600
            ? 2
            : screenWidth < 900
            ? 3
            : 4;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: 0.75,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
        ),
        itemCount: 8,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[200],
            ),
            child: Center(child: Text("Product ${index + 1}")),
          );
        },
      ),
    );
  }
}

class FashionWebLandingPageFooter extends StatelessWidget {
  const FashionWebLandingPageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;

    return Container(
      padding: const EdgeInsets.all(24),
      color: Colors.black,
      child:
          isMobile
              ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildFooterContent(isMobile),
              )
              : Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildFooterContent(isMobile),
              ),
    );
  }

  List<Widget> _buildFooterContent(bool isMobile) {
    return [
      _buildBrandSection(isMobile),
      _buildLinkColumn('COMPANY', [
        'About',
        'Contact',
        'Press',
        'Blog',
      ], isMobile),
      _buildLinkColumn('ACCOUNT', [
        'My Account',
        'Wishlist',
        'Cart',
        'Order History',
      ], isMobile),
      _buildLinkColumn('SUPPORT', ['Shipping', 'Returns', 'FAQs'], isMobile),
    ];
  }

  Widget _buildBrandSection(bool isMobile) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'FASHION',
        style: AppFonts.black(
          fontSize: 24,
          color: FashionWebpageColors.whiteColor,
        ),
      ),
      const SizedBox(height: 14),
      Text(
        'Complete your style with awesome clothes from us.',
        style: AppFonts.regular(
          fontSize: 16,
          color: FashionWebpageColors.greyColor,
        ),
      ),
      const SizedBox(height: 14),
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
