import 'package:book_store/ReusebleWidgets/primaryButton.dart';
import 'package:book_store/static/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: height * 0.60,
            width: width,
            color: primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('Assets/Images/book.png',height: 200,width: 370,),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text("E - Book Store",style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                    color: Theme.of(context).colorScheme.background,
                  ),),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  Text("Here you can find best book for you and you can also read book and listens book",style: Theme.of(context).textTheme.labelSmall?.copyWith(
                    color: Theme.of(context).colorScheme.background,
                  ),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,

            children: [

              SizedBox(
                height: 30,
              ),
              Text("Disclaimer",style: Theme.of(context).textTheme.labelMedium
                // ?.copyWith(color: Theme.of(context).colorScheme.background
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text("n publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum",
                  style: Theme.of(context).textTheme.labelSmall,
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
          Spacer(),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: PrimaryButton(btnName: 'Continue', ontap: () {},
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
