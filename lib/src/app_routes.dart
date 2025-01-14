import 'package:auto_route/auto_route.dart';
import 'app_routes.gr.dart';

@AutoRouterConfig()
class AppRoutes extends RootStackRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: NVHomeRoute.page, initial: true)
  ];

}