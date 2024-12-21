import 'package:ecommerceapp/bloc/home_bloc/home_bloc.dart';
import 'package:ecommerceapp/core/utils/constants/constants.dart';
import 'package:ecommerceapp/core/utils/styles/app_colors.dart';
import 'package:ecommerceapp/data/model/about_us_model/about_us_model.dart';
import 'package:ecommerceapp/routes/route_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    context.read<HomeBloc>().add(const GetProductsListEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Discover our exclusive products',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: Constants.height * 0.02),
                const Text(
                  'In this marketplace, you will find various technologies at the cheapest price.',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                SizedBox(height: Constants.height * 0.03),
                _buildCategorySection('beauty'.toUpperCase(), state, context),
                SizedBox(height: Constants.height * 0.03),
                _buildCategorySection(
                    'fragrances'.toUpperCase(), state, context),
                SizedBox(height: Constants.height * 0.03),
                _buildCategorySection(
                    'furniture'.toUpperCase(), state, context),
                SizedBox(height: Constants.height * 0.03),
                _buildCategorySection(
                    'groceries'.toUpperCase(), state, context),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _buildCategorySection(
      String category, HomeState state, BuildContext context) {
    // Filter products by category
    final filteredProducts = state.data
            ?.where((product) =>
                product.category?.name?.toLowerCase() == category.toLowerCase())
            .toList() ??
        [];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              category,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'Show All',
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
        SizedBox(height: Constants.height * 0.03),
        SizedBox(
          height: Constants.height * 0.3,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: filteredProducts.length,
            itemBuilder: (context, index) {
              final product = filteredProducts[index];
              return _buildProductCard(product);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildProductCard(Product product) {
    return InkWell(
      onTap: () => context.pushNamed(RouteConstants.productPath,
          queryParameters: {'productId': product.id.toString()}),
      child: Container(
        width: 160,
        margin: EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Image.network(
                  product.images?.first ?? '',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 8),
              Text(
                product.title ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              Text(
                product.description ?? '',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              SizedBox(height: 4),
              Text(
                '\$${product.price?.toStringAsFixed(2)}',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
