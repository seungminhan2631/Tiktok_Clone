import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tiktok_clone/constants/gaps.dart';
import 'package:tiktok_clone/constants/sizes.dart';
import 'package:tiktok_clone/screens/features/settings/settings_screen.dart';
import 'package:tiktok_clone/screens/features/users/widgets/persistent_tab_bar.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  void _onGearPressed() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SettingsScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) {
              return [
                SliverAppBar(
                  title: Text(
                    '차은우',
                  ),
                  backgroundColor: Colors.black,
                  actions: [
                    IconButton(
                      onPressed: _onGearPressed,
                      icon: FaIcon(
                        FontAwesomeIcons.gear,
                        size: Sizes.size20,
                      ),
                    ),
                  ],
                ),
                SliverToBoxAdapter(
                  child: Column(
                    children: [
                      Gaps.v20,
                      CircleAvatar(
                        radius: 50,
                        foregroundImage: NetworkImage(
                          "https://avatars.githubusercontent.com/u/116543259?v=4",
                        ),
                        child: Text(
                          '승민',
                        ),
                      ),
                      Gaps.v20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '@Eun-Woo Cha',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Sizes.size18,
                              color: Colors.black,
                            ),
                          ),
                          Gaps.h5,
                          FaIcon(
                            FontAwesomeIcons.solidCircleCheck,
                            size: Sizes.size16,
                            color: Colors.blue.shade400,
                          ),
                        ],
                      ),
                      Gaps.v24,
                      SizedBox(
                        height: Sizes.size48,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "97",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Sizes.size18,
                                    color: Colors.black,
                                  ),
                                ),
                                Gaps.v3,
                                Text(
                                  'Following',
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: Sizes.size14,
                                  ),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              width: Sizes.size32,
                              thickness: Sizes.size1,
                              color: Colors.grey.shade400,
                              indent: Sizes.size14,
                              endIndent: Sizes.size14,
                            ),
                            Column(
                              children: [
                                Text(
                                  "10M",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Sizes.size18,
                                    color: Colors.black,
                                  ),
                                ),
                                Gaps.v3,
                                Text(
                                  'Followers',
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: Sizes.size14,
                                  ),
                                ),
                              ],
                            ),
                            VerticalDivider(
                              width: Sizes.size32,
                              thickness: Sizes.size1,
                              color: Colors.grey.shade400,
                              indent: Sizes.size14,
                              endIndent: Sizes.size14,
                            ),
                            Column(
                              children: [
                                Text(
                                  "194.3M",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: Sizes.size18,
                                    color: Colors.black,
                                  ),
                                ),
                                Gaps.v5,
                                Text(
                                  'Likes',
                                  style: TextStyle(
                                    color: Colors.grey.shade500,
                                    fontSize: Sizes.size14,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Gaps.v14,
                      FractionallySizedBox(
                        widthFactor: 0.33,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            vertical: Sizes.size12,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).primaryColor,
                            borderRadius: BorderRadius.all(
                              Radius.circular(
                                Sizes.size4,
                              ),
                            ),
                          ),
                          child: Text(
                            'Follow',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: Sizes.size14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Gaps.v14,
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: Sizes.size32,
                        ),
                        child: Text(
                          'He is the most handsome guy in this world and very kind man.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: Sizes.size14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Gaps.v14,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(
                            FontAwesomeIcons.link,
                            size: Sizes.size12,
                          ),
                          Gaps.h4,
                          Text(
                            'https://nomadcoders.co',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: Sizes.size14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      Gaps.v20,
                    ],
                  ),
                ),
                SliverPersistentHeader(
                  delegate: PersistentTabBar(),
                  pinned: true,
                ),
              ];
            },
            body: TabBarView(
              children: [
                GridView.builder(
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  itemCount: 20,
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: Sizes.size2,
                    mainAxisSpacing: Sizes.size2,
                    childAspectRatio: 9 / 14,
                  ),
                  itemBuilder: (context, index) => Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 9 / 14,
                        child: FadeInImage.assetNetwork(
                          fit: BoxFit.cover,
                          placeholder: "assets/images/chk.jpg",
                          image:
                              'https://avatars.githubusercontent.com/u/116543259?v=4',
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Text(
                    'Page one',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
