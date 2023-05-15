CREATE DATABASE recipe_sharing_app_db;
\c recipe_sharing_app_db



CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  name TEXT,
  description TEXT,
  ingredients TEXT,
  instructions TEXT,
  category TEXT CHECK (category IN ('drink', 'meal', 'dessert')),
  image_url TEXT

);




INSERT INTO recipes (name, description, ingredients, instructions, category, image_url) 
VALUES ('Pasta with Meatballs', 'A classic Italian dish', '1 pound spaghetti, 1 pound ground beef, 1/2 cup breadcrumbs, 1/4 cup grated Parmesan cheese, 2 cloves garlic, 1 egg, salt and pepper to taste', '1. Cook spaghetti according to package instructions. 2. Combine ground beef, breadcrumbs, Parmesan cheese, garlic, egg, salt, and pepper in a bowl. Mix well and form into meatballs. 3. Heat olive oil in a skillet over medium-high heat. Add meatballs and cook until browned on all sides. 4. Serve meatballs over cooked spaghetti.', 'meal', 'https://plus.unsplash.com/premium_photo-1664478291780-0c67f5fb15e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
('Chicken Caesar Salad', 'A refreshing and healthy salad', '2 boneless, skinless chicken breasts, 1 head Romaine lettuce, 1/2 cup Caesar dressing, 1/4 cup croutons, 1/4 cup grated Parmesan cheese', '1. Season chicken breasts with salt and pepper and grill until cooked through. 2. Chop Romaine lettuce into bite-sized pieces and place in a large bowl. 3. Add Caesar dressing to the lettuce and toss to coat. 4. Add croutons and Parmesan cheese to the salad and mix well. 5. Slice the cooked chicken breasts and place on top of the salad. Serve chilled.', 'meal', 'https://images.unsplash.com/photo-1605291535065-e1d52d2b264a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'),
('Beef Stew', 'A hearty and comforting stew', '2 pounds beef stew meat, 4 carrots, 2 onions, 2 potatoes, 3 cloves garlic, 2 cups beef broth, 1 tablespoon tomato paste, 2 bay leaves, 1 teaspoon thyme, salt and pepper to taste', '1. Cut the carrots, onions, and potatoes into bite-sized pieces. Mince the garlic. 2. Heat olive oil in a large pot over medium-high heat. Add the beef stew meat and cook until browned on all sides. 3. Add the carrots, onions, and garlic to the pot and cook for a few minutes until softened. 4. Add the potatoes, beef broth, tomato paste, bay leaves, thyme, salt, and pepper to the pot. 5. Bring the stew to a boil, then reduce heat and simmer for 2-3 hours, or until the beef is tender. Remove bay leaves before serving.', 'meal', 'https://images.unsplash.com/photo-1534939561126-855b8675edd7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
('Iced Coffee','A refreshing summer drink made with fresh fruit and sparkling water.', '1 cup coffee, 1/4 cup milk, 1-2 tbsp sugar, ice cubes', '1. Brew coffee and let it cool. 2. Add milk and sugar to taste. 3. Pour over ice cubes. Enjoy!', 'drink', 'https://images.unsplash.com/photo-1620360289100-030b032e5a27?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
('Green Smoothie','A creamy and indulgent milkshake made with chocolate ice cream and peanut butter.', '1 banana, 1 cup spinach, 1/2 cup pineapple, 1/2 cup almond milk, 1/2 cup ice cubes', '1. Add all ingredients to a blender. 2. Blend until smooth. Enjoy!', 'drink', 'https://images.unsplash.com/photo-1610970881699-44a5587cabec?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
('Mango Lassi',' A sweet and tart lemonade made with fresh lemons and honey.', '1 mango, 1/2 cup yogurt, 1/4 cup milk, 1-2 tbsp honey, 1/2 tsp ground cardamom', '1. Cut mango into pieces and blend in a blender. 2. Add yogurt, milk, honey, and cardamom. 3. Blend until smooth. Enjoy!', 'drink', 'https://images.unsplash.com/photo-1525385133512-2f3bdd039054?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=385&q=80'),
('Chocolate Truffles',' A decadent chocolate cake with layers of rich ganache and whipped cream.', '8 oz dark chocolate, 1/2 cup heavy cream, 2 tbsp unsalted butter, 1/4 cup cocoa powder', '1. Chop the chocolate into small pieces and place in a bowl. 2. Heat the cream and butter in a saucepan until simmering. 3. Pour the cream mixture over the chocolate and let it sit for 2 minutes. 4. Stir until smooth. 5. Refrigerate until firm. 6. Form into small balls and roll in cocoa powder. Enjoy!', 'dessert', 'https://images.unsplash.com/photo-1583480241328-87b2795fbb8f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=290&q=80'),
('Vanilla Pudding','A fruity and tangy key lime pie with a graham cracker crust.', '2 cups milk, 1/2 cup sugar, 1/4 cup cornstarch, 1/4 tsp salt, 2 tsp vanilla extract', '1. In a saucepan, whisk together milk, sugar, cornstarch, and salt. 2. Cook over medium heat, stirring constantly, until the mixture thickens and comes to a boil. 3. Remove from heat and stir in vanilla extract. 4. Pour into individual serving cups. 5. Refrigerate until set. Enjoy!', 'dessert', 'https://images.unsplash.com/photo-1488477181946-6428a0291777?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80'),
('Fruit Tart', ' A classic and creamy vanilla bean ice cream.', '1 pre-made pie crust, 1 cup whipped cream, 1 cup fresh fruit (such as strawberries, kiwi, blueberries), 1/4 cup apricot preserves', '1. Preheat oven to 375°F. 2. Bake pie crust according to package instructions. 3. Let it cool completely. 4. Spread whipped cream on top of the crust. 5. Arrange fresh fruit on top. 6. Heat apricot preserves in a saucepan until melted. 7. Brush the melted preserves over the fruit. 8. Refrigerate until set. Enjoy!', 'dessert', 'https://plus.unsplash.com/premium_photo-1673011776754-bfbb67ed6706?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80');

 ALTER TABLE recipes
ADD CONSTRAINT recipes_category_check
CHECK (category IN ('meals', 'drinks', 'desserts'));


CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  user_name TEXT,
  email TEXT
);

ALTER TABLE users ADD COLUMN password_digest TEXT;

CREATE TABLE likes(
  id SERIAL PRIMARY KEY,
  user_id INTEGER,
  recipe_id INTEGER
);



CREATE TABLE reviews(
  id SERIAL PRIMARY KEY,
  user_name TEXT,
  comment TEXT,
  rating INTEGER
  recipe_id INTEGER
);

