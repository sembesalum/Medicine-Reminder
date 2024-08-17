import 'package:flutter/material.dart';
import 'package:medicine_reminder/pages/models/news_model.dart';
import 'package:medicine_reminder/pages/styles/appLayout.dart';
import 'package:medicine_reminder/pages/styles/appStyles.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen(this.data, {Key? key}) : super(key: key);
  final NewsData data;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Color(0xFF247E88),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.data.title!,
                style: Styles.newsTitle.copyWith(color: Colors.black),
              ),
              SizedBox(
                height: AppLayout.getHeight(8.0),
              ),
              
              SizedBox(
                height: AppLayout.getHeight(10.0),
              ),
              Hero(
                tag: "${widget.data.title}",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: SizedBox(
                    height: AppLayout.getHeight(250),
                    width: double.infinity,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Image.asset("assets/images/${widget.data.image!}"),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(widget.data.content!),
            ],
          ),
        ),
      ),
    );
  }
}
