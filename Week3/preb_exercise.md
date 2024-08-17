# Was your database already in 2NF / 3 NF?

The initial database structure was not in 2NF (Second Normal Form) or 3NF (Third Normal Form) due to the presence of redundant data and dependencies that needed to be addressed for proper normalization.

# What changes did you have to do to normalize your database?

To normalize the database and bring it to 2NF and 3NF, the following changes were made:

Elimination of Redundant Data:

Ingredients and cooking steps were directly associated with the recipes in the 'recipes' table, leading to redundant data storage. To address this, separate tables 'recipe_ingredients' and 'recipe_steps' were created to break down these relationships.

Introduction of Intermediate Tables:

The 'recipe_ingredients' and 'recipe_steps' tables were established to manage the many-to-many relationships between recipes and ingredients/cooking steps effectively. This separation helps in maintaining data integrity and reducing redundancy.

Refactoring Foreign Key References:

The foreign key references in the 'recipes' table were updated to point to the new intermediate tables 'recipe_ingredients' and 'recipe_steps' instead of individual tables like 'ingredients' and 'cooking_steps'.

By implementing these changes and restructuring the database into normalized forms, data redundancy has been minimized, relationships have been more clearly defined, and data integrity has been improved. These modifications ensure that the database is now in a more normalized state following 2NF and 3NF principles.