import 'package:flutter/material.dart';

import '../../common/widgets/custom_button.dart';
import '../../utils/color_constants.dart';
import '../post_page_view_screens/selected_screen.dart';

class PageViewScreenSix extends StatelessWidget {
  const PageViewScreenSix({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: headingText(size),
              ),
              SizedBox(
                height: size.height * 0.009,
              ),
              Expanded(
                flex: 15,
                child: Column(
                  children: [
                    Expanded(
                      flex: 14,
                      child: imageColunm(size),
                    ),
                    Expanded(flex: 2, child: actionButtons(size, context)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget actionButtons(Size size, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Flexible(
            child: SizedBox(
              child: MyButton(
                  ontap: () {
                    Navigator.pop(context);
                  },
                  radius: size.height * 0.02,
                  color: ColorConstants.introPageTextColor,
                  height: size.height * 0.05,
                  width: size.width * 0.4,
                  spreadRadius: 2,
                  child: Text(
                    'Back',
                    style: TextStyle(
                        color: Colors.white, fontSize: size.height * 0.020),
                  )),
            ),
          ),
          Flexible(
            child: SizedBox(
              child: MyButton(
                  ontap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const SelectedScreen();
                      },
                    ));
                  },
                  radius: size.height * 0.02,
                  color: ColorConstants.buttonColor,
                  height: size.height * 0.05,
                  width: size.width * 0.4,
                  spreadRadius: 2,
                  child: Text(
                    'Next',
                    style: TextStyle(
                        color: Colors.white, fontSize: size.height * 0.020),
                  )),
            ),
          ),
        ],
      ),
    );
  }

  headingText(Size size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Flexible(
          child: Text(
            'They sound great..but how are they going to help me with\ninvesting?',
            textAlign: TextAlign.center,
            maxLines: 3,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: ColorConstants.introPageTextColor,
                fontSize: size.height * 0.027),
          ),
        ),
      ],
    );
  }

  Widget imageColunm(Size size) {
    var space = size.height * 0.009;
    return Column(
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(child: Image.asset(r'assets/images/pgsixcompnent1.png')),
              Flexible(child: Image.asset(r'assets/images/pgsixcompnent2.png')),
              Flexible(child: Image.asset(r'assets/images/pgsixcompnent3.png')),
            ],
          ),
        ),
        SizedBox(
          height: space,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(child: Image.asset(r'assets/images/pgsixcompnent4.png')),
              Flexible(child: Image.asset(r'assets/images/pgsixcompnent5.png')),
              Flexible(child: Image.asset(r'assets/images/pgsixcompnent6.png')),
            ],
          ),
        ),
        SizedBox(
          height: space,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(child: Image.asset(r'assets/images/pgcomponent7.png')),
              Flexible(child: Image.asset(r'assets/images/pgcomponent8.png')),
              Flexible(child: Image.asset(r'assets/images/pgcomponent9.png')),
            ],
          ),
        ),
        SizedBox(
          height: space,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(child: Image.asset(r'assets/images/pgcomponent10.png')),
              Flexible(child: Image.asset(r'assets/images/pgcomponent11.png')),
              Flexible(child: Image.asset(r'assets/images/pgcomponent12.png')),
            ],
          ),
        ),
        SizedBox(
          height: space,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(child: Image.asset(r'assets/images/pgcomponent13.png')),
              Flexible(child: Image.asset(r'assets/images/pgcomponent14.png')),
              Flexible(child: Image.asset(r'assets/images/pgcomponent15.png')),
            ],
          ),
        ),
        SizedBox(
          height: space,
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(child: Image.asset(r'assets/images/pgcomponent16.png')),
              Flexible(child: Image.asset(r'assets/images/pgcomponent17.png')),
              //  Flexible(child: Image.asset(r'assets/images/pgsixcompnent1.png')),
            ],
          ),
        ),
      ],
    );
  }
}
