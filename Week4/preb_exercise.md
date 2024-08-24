# Preb Exercise 4

Here are the steps to convert the normalized database to a document-based database:

## Collections:
1. `Recipes Collection`: This collection will store documents representing recipes. Each document will contain information such as the recipe name, description, cooking time, and servings.

2. `Ingredients Collection`: This collection will store documents representing ingredients. Each document will include details about the ingredient name, quantity, and possibly nutritional information.

3. `Steps Collection`: This collection will store documents representing cooking steps. Each document will contain instructions for a specific step in a recipe.

## Embedding vs. Normalizing:
- In a document-based database:
  - **Embedded Data**: Simple and frequently accessed data should be embedded within the recipe document. This could include information like the list of ingredients with their quantities for a specific recipe, and the detailed cooking steps.
  - **Normalized Data**: For complex and less frequently accessed data, such as detailed information about ingredients (e.g., nutritional values) or a list of all cooking steps for various recipes, you can store this data in separate collections and reference them using unique identifiers.

For instance, you may embed the list of ingredients with quantities directly in the recipe document, while maintaining separate collections for ingredients and cooking steps for reference and normalization purposes.

By adopting a document-based approach, you can store related data together in a single document, providing a more flexible and scalable structure compared to traditional relational databases.