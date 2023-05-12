CREATE DATABASE recipe_sharing_app_db;
\c recipe_sharing_app_db



CREATE TABLE recipes (
  id SERIAL PRIMARY KEY,
  name TEXT,
  description TEXT,
  ingredients TEXT,
  instructions TEXT,
  image_url TEXT

);

INSERT INTO recipes (name, description, ingredients, instructions, image_url)
VALUES ('Spaghetti with Meatballs', 'A classic Italian dish', '1 pound spaghetti, 1 pound ground beef, 1/2 cup breadcrumbs, 1/4 cup grated Parmesan cheese, 2 cloves garlic, 1 egg, salt and pepper to taste', '1. Cook spaghetti according to package instructions. 2. Combine ground beef, breadcrumbs, Parmesan cheese, garlic, egg, salt, and pepper in a bowl. Mix well and form into meatballs. 3. Heat olive oil in a skillet over medium-high heat. Add meatballs and cook until browned on all sides. 4. Serve meatballs over cooked spaghetti.','https://plus.unsplash.com/premium_photo-1664478291780-0c67f5fb15e6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
('Chicken Curry', 'A flavorful Indian-inspired dish', '1 pound boneless, skinless chicken breasts, cut into bite-sized pieces; 1 large onion, diced; 2 cloves garlic, minced; 1 tablespoon fresh ginger, grated; 1 tablespoon curry powder; 1 can diced tomatoes; 1 cup coconut milk; salt and pepper to taste', '1. Heat oil in a large skillet over medium heat. Add onion and cook until softened, about 5 minutes. 2. Add garlic, ginger, and curry powder and cook for 1-2 minutes. 3. Add chicken and cook until browned on all sides, about 5-7 minutes. 4. Add tomatoes and coconut milk and bring to a simmer. 5. Reduce heat and let simmer for 20-30 minutes, until chicken is cooked through and sauce has thickened. 6. Serve with rice or naan bread.', 'https://images.unsplash.com/photo-1631292784640-2b24be784d5d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80'),
('Greek Salad', 'A refreshing and healthy salad', '1 head romaine lettuce, chopped; 1 cucumber, sliced; 1 bell pepper, diced; 1 red onion, sliced; 1 cup cherry tomatoes, halved; 1/2 cup crumbled feta cheese; 1/4 cup Kalamata olives; 2 tablespoons olive oil; 1 tablespoon red wine vinegar; salt and pepper to taste', '1. In a large bowl, combine lettuce, cucumber, bell pepper, red onion, cherry tomatoes, feta cheese, and olives. 2. In a small bowl, whisk together olive oil, red wine vinegar, salt, and pepper. 3. Drizzle dressing over salad and toss to combine. 4. Serve immediately.', 'https://images.unsplash.com/photo-1588471790208-16825e6bcc24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=764&q=80');






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


 INSERT INTO reviews (user_id, recipe_id, review )
 VALUES (1, 2, 3)

CREATE TABLE reviews(
  id SERIAL PRIMARY KEY,
  user_name TEXT,
  recipe_name TEXT,
  review TEXT
);