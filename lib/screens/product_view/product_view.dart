import 'dart:developer';

import 'package:ecommerceapp/bloc/product_view_bloc/product_view_bloc.dart';
import 'package:ecommerceapp/core/utils/constants/constants.dart';
import 'package:ecommerceapp/utils/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/utils/styles/app_colors.dart';

class ProductView extends StatefulWidget {
  final String productId;
  const ProductView({super.key, required this.productId});

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  @override
  void initState() {
    context.read<ProductViewBloc>().add(GetProductsDataEvent(widget.productId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: AppColors.black),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border, color: AppColors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: BlocConsumer<ProductViewBloc, ProductViewState>(
        listener: (context, state) {
          // Handle any additional listeners if needed
        },
        builder: (context, state) {
          log(state.toString());
          final product = state.data;
          return product == null
              ? Center(child: CircularProgressIndicator())
              : Padding(
                  padding: EdgeInsets.all(Constants.height * 0.025),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Product Image
                      Center(
                        child: Container(
                          height: Constants.height * 0.3,
                          width: Constants.width * 0.7,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.lightGrey,
                          ),
                          child: Image.network(
                            product.images?.first ?? '',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: Constants.height * 0.02),

                      // Price and Title
                      Texts(
                        text:
                            '\$${product.price?.toStringAsFixed(2) ?? '0.00'}',
                        fonstsize: Constants.height * 0.03,
                        fontWeight: FontWeight.bold,
                        color: AppColors.blue,
                      ),
                      SizedBox(height: Constants.height * 0.01),
                      Texts(
                        text: product.title ?? '',
                        fonstsize: Constants.height * 0.025,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                      SizedBox(height: Constants.height * 0.01),

                      // Description
                      Texts(
                        text: product.description ?? '',
                        fonstsize: Constants.height * 0.015,
                        fontWeight: FontWeight.normal,
                        color: AppColors.grey,
                      ),
                      SizedBox(height: Constants.height * 0.02),

                      // Additional Details Section
                      Container(
                        padding: EdgeInsets.all(Constants.height * 0.02),
                        decoration: BoxDecoration(
                          color: AppColors.lightGrey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Texts(
                              text: 'About ',
                              fonstsize: Constants.height * 0.02,
                              fontWeight: FontWeight.bold,
                              color: AppColors.black,
                            ),
                            SizedBox(height: Constants.height * 0.01),
                            Texts(
                              text: product.description ??
                                  'No description available.',
                              fonstsize: Constants.height * 0.015,
                              fontWeight: FontWeight.normal,
                              color: AppColors.grey,
                            ),
                          ],
                        ),
                      ),
                      Spacer(),

                      Center(
                        child: Container(
                          height: Constants.height * 0.05,
                          width: Constants.width * 0.5,
                          decoration: BoxDecoration(
                              color: AppColors.blue,
                              borderRadius: BorderRadius.circular(
                                  Constants.height * 0.02)),
                          child: InkWell(
                            onTap: () {},
                            child: Center(
                              child: Text(
                                'EDIT',
                                style: TextStyle(
                                  fontSize: Constants.height * 0.02,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
        },
      ),
    );
  }
}
