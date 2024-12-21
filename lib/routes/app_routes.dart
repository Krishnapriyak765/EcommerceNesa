import 'package:ecommerceapp/screens/home/home_page.dart';
import 'package:ecommerceapp/main.dart';
import 'package:ecommerceapp/screens/product_edit/product_edit.dart';
import 'package:ecommerceapp/screens/product_view/product_view.dart';
import 'package:ecommerceapp/routes/route_constants.dart';
import 'package:go_router/go_router.dart';

final GoRouter basicRoutes =
    GoRouter(debugLogDiagnostics: true, navigatorKey: navigationKey, routes: [
  GoRoute(
    path: RouteConstants.initialRoute,
    name: RouteConstants.initialPath,
    builder: (context, state) => const HomePage(),
  ),
  GoRoute(
    path: RouteConstants.productRoute,
    name: RouteConstants.productPath,
    builder: (context, state) => ProductView(
      productId: state.uri.queryParameters['productId'] ?? '',
    ),
  ),
  GoRoute(
    path: RouteConstants.producteditRoute,
    name: RouteConstants.producteditPath,
    builder: (context, state) => const ProductEdit(),
  ),
]);
