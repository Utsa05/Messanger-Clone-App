// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:messanger_clone_app/presentation/cores/color.dart';
import 'package:messanger_clone_app/presentation/cores/string.dart';
import 'package:messanger_clone_app/presentation/widgets/icon_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppbar(context),
      body: ListView(
        // padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15.0),
            child: SearchWidget(searchController: _searchController),
          ),
          Container(
            margin: const EdgeInsets.only(top: 10.0, bottom: 20.0),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.only(left: 15.0, right: 15.0),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                    20,
                    (index) => Container(
                          height: 65.0,
                          width: 65.0,
                          margin: const EdgeInsets.only(right: 12.0),
                          decoration: BoxDecoration(
                              border:
                                  Border.all(color: AppColor.blue, width: 5),
                              color: AppColor.white,
                              shape: BoxShape.circle),
                        )),
              ),
            ),
          )
        ],
      ),
    );
  }

  AppBar homeAppbar(BuildContext context) {
    return AppBar(
      title: Text(
        "Chats",
        style: Theme.of(context).textTheme.headline6!.copyWith(fontSize: 28.0),
      ),
      leading: CachedNetworkImage(
        imageUrl: AppString.networkImage,
        imageBuilder: (context, imageProvider) => Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
          ),
        ),
        placeholder: (context, url) => const Padding(
          padding: EdgeInsets.all(12.0),
          child: CircularProgressIndicator(),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
      actions: [
        CircleButton(
          icon: Icons.camera_alt,
          tap: () {},
        ),
        CircleButton(
          icon: Icons.video_call_sharp,
          tap: () {},
        ),
        CircleButton(
          icon: Icons.edit,
          tap: () {},
        )
      ],
    );
  }
}

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    required TextEditingController searchController,
  })  : _searchController = searchController,
        super(key: key);

  final TextEditingController _searchController;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 15.0),
      height: 40.0,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: AppColor.grey.withOpacity(0.3),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: [
            const Icon(
              Icons.search,
              color: AppColor.white,
            ),
            const SizedBox(
              width: 6.0,
            ),
            Expanded(
                child: TextField(
              style: const TextStyle(color: AppColor.white),
              controller: _searchController,
              decoration: const InputDecoration(
                  border: InputBorder.none,
                  isDense: true,
                  contentPadding: EdgeInsets.all(0.0),
                  hintText: "Search",
                  hintStyle: TextStyle(color: AppColor.white)),
            ))
          ],
        ),
      ),
    );
  }
}
