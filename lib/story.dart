import 'package:flutter/material.dart';
class PageBuild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageViewBuilderr(),
    );
  }
}

class PageViewBuilderr extends StatefulWidget {
  @override
  State<PageViewBuilderr> createState() => _PageViewBuilderrState();
}
class _PageViewBuilderrState extends State<PageViewBuilderr> {
  PageController controller = PageController();
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: controller,
            itemCount: 5,
            itemBuilder: (context, index) {
              return returnWidget(index);
            },
            onPageChanged: (index) {
              setState(() {
                currentPage = index;
              });
            },
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  if (currentPage > 0) {
                    controller.previousPage(
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeInCirc);
                  }
                },
                child: const Text("Previous")),
            const SizedBox(
              width: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  if (currentPage < 4) {
                    controller.nextPage(
                        duration: const Duration(milliseconds: 800),
                        curve: Curves.easeInCirc);
                  }
                },
                child: const Text("Next"))
          ],
        )
      ],
    );
  }

  Widget returnWidget(int index) {
    return Container(
      color: Colors.orange,
      child: Center(
        child: Text(
          "Page Index = $index",
        ),
      ),
    );
  }
}