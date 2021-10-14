import 'package:auto_route/auto_route.dart';
import 'package:kitchenful/recipes/presentation/recipes_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: RecipesPage, initial: true),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
