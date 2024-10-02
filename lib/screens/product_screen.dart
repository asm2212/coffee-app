// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tea/res/resorces_list.dart';

class ProductScreen extends StatefulWidget {
  final int index;
  const ProductScreen({
    super.key,
    required this.index,
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  var s = true;
  var m = false;
  var l = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: const Color(0xFF1d2630),
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                  child: Stack(
                    children: [
                      Positioned.fill(
                        child: Image(
                            image: images[widget.index], fit: BoxFit.cover),
                      ),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          margin: const EdgeInsets.only(
                              top: 50, left: 20, right: 20),
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF1d2630),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Icon(
                                    Icons.arrow_back_ios_outlined,
                                    color: Colors.white.withOpacity(0.5),
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFF1d2630),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: const Icon(
                                    Icons.favorite,
                                    color: Colors.orange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: const EdgeInsets.only(
                            top: 30,
                            left: 30,
                            right: 30,
                          ),
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: const Color(0xFF1d2630).withOpacity(0.6),
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(50),
                              topRight: Radius.circular(50),
                            ),
                          ),
                          child: SingleChildScrollView(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      names[widget.index],
                                      style: const TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      with_[widget.index],
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white.withOpacity(0.5),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    Row(
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          color: Colors.orange,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          s
                                              ? ratting[widget.index].toString()
                                              : m
                                                  ? mediumRating[widget.index]
                                                      .toString()
                                                  : largeRating[widget.index]
                                                      .toString(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          s
                                              ? prefix[widget.index].toString()
                                              : m
                                                  ? prefixMedium[widget.index]
                                                  : prefixLarge[widget.index],
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(0.5),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Container(
                                          height: 60,
                                          width: 60,
                                          decoration: BoxDecoration(
                                              color: const Color(0xFF1d2630),
                                              borderRadius:
                                                  BorderRadius.circular(10)),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceBetween,
                                              children: [
                                                const Icon(
                                                  Icons.coffee,
                                                  color: Colors.orange,
                                                ),
                                                Text(
                                                  "Coffee",
                                                  style: TextStyle(
                                                    color: Colors.white
                                                        .withOpacity(0.5),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Container(
                                          height: 56,
                                          width: 56,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFF1d2630),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(8),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.vertical,
                                              child: Column(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.spaceBetween,
                                                children: [
                                                  const Icon(
                                                    Icons.water_drop_rounded,
                                                    color: Colors.orange,
                                                  ),
                                                  Text(
                                                    "Milk",
                                                    style: TextStyle(
                                                      color: Colors.white
                                                          .withOpacity(0.5),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Container(
                                      height: 40,
                                      width: 140,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFF1d2630),
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Center(
                                        child: Text(
                                          s
                                              ? "Small Roasted"
                                              : m
                                                  ? "Medium Roasted"
                                                  : "Large Roasted",
                                          style: const TextStyle(
                                            fontSize: 18,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: const EdgeInsets.only(top: 20, left: 20, right: 30),
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Description",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text(
                            "A Cappuccino is the perfect balance of espresso,steamed milk. This\ncoffee is all about the structures",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Size",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white.withOpacity(0.5)),
                          ),
                         const SizedBox(
                            height: 5,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      s = true;
                                      m = false;
                                      l = false;
                                      setState(() {});
                                    },
                                    child: Container(
                                        height: 40,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          color: s
                                              ? const Color(0xFF1d2630)
                                              : Colors.white.withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: s
                                                ? Colors.orange
                                                : const Color(0xFF1d2630),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "S",
                                            style: TextStyle(
                                              color: s
                                                  ? Colors.orange
                                                  : Colors.white.withOpacity(0.8),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      s = false;
                                      m = true;
                                      l = false;
                                      setState(() {});
                                    },
                                    child: Container(
                                        height: 40,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          color: m
                                              ? const Color(0xFF1d2630)
                                              : Colors.white.withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: m
                                                ? Colors.orange
                                                : const Color(0xFF1d2630),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "M",
                                            style: TextStyle(
                                              color: m
                                                  ? Colors.orange
                                                  : Colors.white.withOpacity(0.8),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      s = false;
                                      m = false;
                                      l = true;
                                      setState(() {});
                                    },
                                    child: Container(
                                        height: 40,
                                        width: 110,
                                        decoration: BoxDecoration(
                                          color: s
                                              ? const Color(0xFF1d2630)
                                              : Colors.white.withOpacity(0.1),
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(
                                            color: l
                                                ? Colors.orange
                                                : const Color(0xFF1d2630),
                                          ),
                                        ),
                                        child: Center(
                                          child: Text(
                                            "L",
                                            style: TextStyle(
                                              color: l
                                                  ? Colors.orange
                                                  : Colors.white.withOpacity(0.8),
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(
                      width: 0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Price",
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.6)),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            const Text(
                              "\$",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              s
                                  ? prices[widget.index]
                                  : m
                                      ? mediumPrice[widget.index]
                                      : largePrice[widget.index],
                              style: const TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange),
                            )
                          ],
                        )
                      ],
                    ),
                    Container(
                        height: 60,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Center(
                            child: Text("Buy Now",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))))
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
