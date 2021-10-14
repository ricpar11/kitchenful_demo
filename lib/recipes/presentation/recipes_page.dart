import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kitchenful/recipes/domain/recipe.dart';
import 'package:kitchenful/recipes/shared/providers.dart';

class RecipesPage extends StatelessWidget {
  const RecipesPage();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _Body(),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final recipesState = watch(recipesNotifierProvider);

    return recipesState.map(
        loading: (_) => const LinearProgressIndicator(),
        success: (success) => _RecipeList(success.recipes),
        failure: (_) => const Placeholder());
  }
}

class _RecipeList extends StatelessWidget {
  final List<Recipe> recipes;

  const _RecipeList(this.recipes);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) => _Recipe(recipes[index]),
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 16),
      itemCount: recipes.length,
    );
  }
}

class _Recipe extends StatelessWidget {
  final Recipe recipe;
  const _Recipe(this.recipe);

  @override
  Widget build(BuildContext context) => Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 64,
              child: const Placeholder(),
            ),
            ListTile(
              title: Text(recipe.name),
              subtitle:
                  Text("Prep: ${recipe.prepTime} Cook: ${recipe.cookTime}"),
            ),
          ],
        ),
      );
}
