from db.db import sql

def all_recipes():
  return sql('SELECT * FROM recipes ORDER BY id')

def get_recipe(id):
  recipes = sql("SELECT * FROM recipes WHERE id = %s", [id])
  return recipes[0]

def create_recipe(name, description, ingredients, instructions, image_url):
  sql('INSERT INTO recipes(name, description, ingredients, instructions, image_url) VALUES( %s, %s, %s, %s, %s) RETURNING *', [ name, description, ingredients, instructions, image_url])

def update_recipe(id, name, description, ingredients, instructions, image_url):
 sql('UPDATE recipes SET name=%s, description=%s, ingredients=%s, instructions=%s, image_url=%s WHERE id=%s RETURNING *', [name, description, ingredients, instructions, image_url, id])

def review_recipe(id, user_name, recipe_name, review):
  sql('INSERT INTO reviews(user_name, recipe_name, review) VALUES (%s, %s, %s) WHERE id=%s RETURNING *', [user_name, recipe_name, review, id])

def like_recipe(user_id, recipe_id):
    sql("INSERT INTO likes(user_id, recipe_id) VALUES(%s, %s) RETURNING *", [user_id, recipe_id])