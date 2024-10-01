import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tea/res/resorces_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1d2630),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  elevation: 20,
                  color: Colors.white.withOpacity(0.1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    height: 40,
                    width: 40,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        circleRow(),
                        circleRow(),
                      ],
                    ),
                  ),
                ),
                Flexible(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          'assets/images/profile.jpg',
                          height: 40,
                          width: 40,
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Find the best',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              'Coffee for you',
              style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 2,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 45,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white.withOpacity(0.1),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.coffee,
                    color: Colors.white.withOpacity(0.3),
                  ),
                  border: InputBorder.none,
                  hintText: "Find your Coffee ....",
                  hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.3), fontSize: 12),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 30,
              child: ListView.builder(
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text(
                          names[index],
                          style: TextStyle(
                            color: category[index]
                                ? Colors.orange
                                : Colors.white.withOpacity(0.4),
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ),
                    );
                  }),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 270,
                    width: double.infinity,
                    child: ListView.builder(
                        itemCount: 9,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return InkWell(
                            onTap: () {},
                            child: Card(
                              elevation: 20,
                              color: Colors.white.withOpacity(0.1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              margin: const EdgeInsets.only(right: 20),
                              child: Container(
                                padding: const EdgeInsets.all(15),
                                width: 155,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: SizedBox(
                                          height: 120,
                                          width: double.infinity,
                                          child: Stack(
                                            children: [
                                              Positioned.fill(
                                                child: Image(
                                                  image: images[index],
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Container(
                                                      height: 25,
                                                      width: 50,
                                                      decoration: BoxDecoration(
                                                        color: const Color(0xFF1d2630)
                                                            .withOpacity(0.7),
                                                        borderRadius:
                                                            const BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  10),
                                                        ),
                                                      ),
                                                      child:  Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceEvenly,
                                                        children: [
                                                          const Icon(
                                                            Icons.star,
                                                            color: Colors.orange,
                                                            size: 15,
                                                            ),
                                                            Text(
                                                              ratting[index].toString(),
                                                              style: const TextStyle(
                                                                color: Colors.white,
                                                                fontWeight: FontWeight.bold
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                      ),
                                                      ),
                                            ],
                                          ),
                                        ),
                                        ),
                                        const SizedBox(height: 10,),
                                        Text(
                                          names[index],
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 18,
                                              ),
                                        ),
                                        const SizedBox(height: 5,),
                                        Text(
                                          with_[index],
                                          style: TextStyle(
                                              color: Colors.white.withOpacity(0.5),
                                              fontSize: 14,
                                              ),
                                        ),
                                        const SizedBox(height: 10,),
                                        Row(
                                          children: [
                                            const Align(
                                              alignment: Alignment.topLeft,
                                              child: Text(
                                                "\$",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                             const SizedBox(width: 5,),
                                             Text(
                                               prices[index].toString(),
                                               style: const TextStyle(
                                                 color: Colors.white,
                                                 fontSize: 18,
                                                 fontWeight: FontWeight.bold,
                                               ),
                                               ),
                                          ],
                                        )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(height: 20,),
                  const Text(
                    "Special for you",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        letterSpacing: 1,
                    ),
                  ),
                     const SizedBox(height: 20,),
                     customCard(images[5]),
                      const SizedBox(height: 20,),
                     customCard(images[6]),
                      const SizedBox(height: 20,),
                     customCard(images[7]),

                ],
              ),
            ))
          ],
        ),
      ),
    );
  }

  Widget circleRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        circleIcon(),
        circleIcon(),
      ],
    );
  }

  Widget circleIcon() {
    return Icon(
      Icons.circle,
      color: Colors.white.withOpacity(0.5),
      size: 10,
    );
  }

  Widget customCard(AssetImage asset) {
  return Card(
    color: Colors.white.withOpacity(0.1),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: Container(
      margin: const EdgeInsets.all(10),
      height: 100,
      width: double.infinity,
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              height: double.infinity,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: asset,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 15),
          // Wrap the Column in Flexible to prevent overflow
        const  Flexible(
            child:  Text(
              "5 Coffee beans You\nMust try!",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

}
