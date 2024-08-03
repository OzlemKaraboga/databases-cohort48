CREATE TABLE dish_types (
    type_id INT PRIMARY KEY,
    type_name VARCHAR(100) NOT NULL
);

CREATE TABLE ingredients (
    ingredient_id INT PRIMARY KEY,
    ingredient_name VARCHAR(100) NOT NULL
);

CREATE TABLE cooking_steps (
    step_id INT PRIMARY KEY,
    step_description VARCHAR(100) NOT NULL
);

CREATE TABLE recipes (
    recipe_id INT PRIMARY KEY,
    recipe_name VARCHAR(100) NOT NULL,
    ingredient1_id INT,
    ingredient2_id INT,
    ingredient3_id INT,
    type1_id INT,
    type2_id INT,
    step1_id INT,
    step2_id INT,
    step3_id INT,
    FOREIGN KEY (ingredient1_id) REFERENCES ingredients(ingredient_id),
    FOREIGN KEY (ingredient2_id) REFERENCES ingredients(ingredient_id),
    FOREIGN KEY (ingredient3_id) REFERENCES ingredients(ingredient_id),
    FOREIGN KEY (type1_id) REFERENCES dish_types(type_id),
    FOREIGN KEY (type2_id) REFERENCES dish_types(type_id),
    FOREIGN KEY (step1_id) REFERENCES cooking_steps(step_id),
    FOREIGN KEY (step2_id) REFERENCES cooking_steps(step_id),
    FOREIGN KEY (step3_id) REFERENCES cooking_steps(step_id)
);

INSERT INTO dish_types (type_id, type_name) VALUES 
(1, 'Kebabs'),
(2, 'Soups'),
(3, 'Rice Dishes'),
(4, 'Desserts');

INSERT INTO ingredients (ingredient_id, ingredient_name) VALUES
(1, 'Meat'),
(2, 'Tomatoes'),
(3, 'Cracked Wheat'),
(4, 'Phyllo Dough'),
(5, 'Sugar'),
(6, 'Rice'),
(7, 'Yogurt'),
(8, 'Flour');

INSERT INTO cooking_steps (step_id, step_description) VALUES
(1, 'Skewer the meat pieces'),
(2, 'Chop the tomatoes'),
(3, 'Boil the rice'),
(4, 'Prepare the baklava'),
(5, 'Let the dessert cool'),
(6, 'Knead the dough'),
(7, 'Prepare the yogurt');

INSERT INTO recipes (recipe_id, recipe_name, ingredient1_id, ingredient2_id, ingredient3_id, type1_id, step1_id, step2_id, step3_id) VALUES
(1, 'Adana Kebab', 1, 2, 6, 1, 1, 2, 6),
(2, 'Lentil Soup', 2, 7, 3, 2, 2, 7, NULL),
(3, 'Milk Pudding', 4, 5, 8, 4, 6, 5, NULL);

SELECT * FROM dish_types;
SELECT * FROM ingredients;
SELECT * FROM cooking_steps;
SELECT * FROM recipes;