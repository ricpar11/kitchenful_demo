import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kitchenful/core/presentation/utils.dart';
import 'package:kitchenful/recipes/domain/recipe.dart';
import 'package:kitchenful/recipes/shared/providers.dart';
import 'package:shimmer/shimmer.dart';

class RecipesPage extends StatefulWidget {
  const RecipesPage();

  @override
  State<RecipesPage> createState() => _RecipesPageState();
}

class _RecipesPageState extends State<RecipesPage> {
  @override
  void initState() {
    Future.microtask(
      () => context.read(recipesNotifierProvider.notifier).getRecipes(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe List"),
      ),
      body: const _Body(),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final recipesState = watch(recipesNotifierProvider);

    return recipesState.map(
        loading: (_) => isMobile(context)
            ? const _MobileLoading()
            : const _DesktopLoading(),
        success: (success) => isMobile(context)
            ? _MobileList(success.recipes)
            : _DesktopBody(success.recipes),
        failure: (_) => const Placeholder());
  }
}

class _MobileList extends StatelessWidget {
  final List<Recipe> recipes;

  const _MobileList(this.recipes);

  @override
  Widget build(BuildContext context) => ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        itemBuilder: (BuildContext context, int index) =>
            _Recipe(recipes[index]),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 16),
        itemCount: recipes.length,
      );
}

class _DesktopBody extends StatelessWidget {
  final List<Recipe> recipes;

  const _DesktopBody(this.recipes);

  @override
  Widget build(BuildContext context) => GridView.count(
        padding: const EdgeInsets.all(20),
        crossAxisCount: 4,
        children: recipes.map((recipe) => _Recipe(recipe)).toList(),
      );
}

class _Recipe extends StatelessWidget {
  final Recipe recipe;
  const _Recipe(this.recipe);

  @override
  Widget build(BuildContext context) => Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            //images were not the best
            Container(
              height: 128,
              color: Colors.grey,
              // child: Image.network(recipe.imageUrl),
            ),
            Container(
              color: Colors.grey.shade100,
              child: ListTile(
                title: Text(recipe.name),
                subtitle:
                    Text("Prep: ${recipe.prepTime} Cook: ${recipe.cookTime}"),
                trailing: const Icon(
                  Icons.bookmark_border_outlined,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      );
}

class _MobileLoading extends StatelessWidget {
  const _MobileLoading();

  @override
  Widget build(BuildContext context) => ListView.separated(
        padding: const EdgeInsets.all(16),
        itemBuilder: (BuildContext context, int index) =>
            const _RecipeLoading(),
        separatorBuilder: (BuildContext context, int index) =>
            const SizedBox(height: 16),
        itemCount: 40,
      );
}

class _DesktopLoading extends StatelessWidget {
  const _DesktopLoading();

  @override
  Widget build(BuildContext context) => GridView.builder(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (BuildContext context, int index) =>
            const _RecipeLoading(),
        itemCount: 40,
      );
}

class _RecipeLoading extends StatelessWidget {
  const _RecipeLoading();

  @override
  Widget build(BuildContext context) => Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              color: Colors.grey,
              height: 128,
              width: double.infinity,
            ),
            Shimmer.fromColors(
              baseColor: Colors.grey.shade400,
              highlightColor: Colors.grey.shade300,
              child: ListTile(
                title: Container(
                  height: 14,
                  width: 100,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(2),
                  ),
                ),
                subtitle: Container(
                    height: 14,
                    width: 250,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(2),
                    )),
              ),
            ),
          ],
        ),
      );
}
