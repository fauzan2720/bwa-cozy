import 'package:cozy/provider/wishlist_provider.dart';
import 'package:flutter/material.dart';
import 'package:cozy/core.dart';
import 'package:provider/provider.dart';

class WishlistView extends StatefulWidget {
  const WishlistView({Key? key}) : super(key: key);

  Widget build(context, WishlistController controller) {
    controller.view = this;
    WishlistProvider wishlistProvider = Provider.of<WishlistProvider>(context);

    return wishlistProvider.wishlist.isEmpty
        ? const Center(
            child: Text("No Wishlist"),
          )
        : Scaffold(
            appBar: AppBar(
              title: const Text("Your Wishlist"),
              actions: const [],
            ),
            body: SingleChildScrollView(
              child: Column(
                children:
                    wishlistProvider.wishlist.map((e) => SpaceCard(e)).toList(),
              ),
            ),
          );
  }

  @override
  State<WishlistView> createState() => WishlistController();
}
