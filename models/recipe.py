from db.db import sql

def all_recipes():
    return sql("SELECT * FROM recipes ORDER BY id")

def get_recipe(id):
    recipes = sql("SELECT * FROM recipes WHERE id = %s", [id])
    return recipes[0]

def create_recipe(name, category, description, ingredients, instructions, image_url):
    sql('INSERT INTO recipes(name, category, description, ingredients, instructions, image_url) VALUES(%s, %s, %s, %s, %s, %s) RETURNING *', [name, category, description, ingredients, instructions, image_url])

def update_recipe(id, name, category, description, ingredients, instructions, image_url):
    sql('UPDATE recipes SET name=%s, description=%s, ingredients=%s, instructions=%s, category=%s, image_url=%s WHERE id=%s RETURNING *', [name, description, ingredients, instructions, category, image_url, id])

def add_review_recipe(id, user_name, comment, rating):
    sql('INSERT INTO reviews(recipe_id, user_name, comment, rating) VALUES (%s, %s, %s, %s) RETURNING *', [id, user_name, comment, rating])
    
def get_reviews(recipe_id):
     comments = sql("SELECT * FROM reviews WHERE recipe_id = %s", [recipe_id])
     return comments

def like_recipe(user_id, recipe_id):
    sql("INSERT INTO likes(user_id, recipe_id) VALUES (%s, %s) RETURNING *", [user_id, recipe_id])

def delete_recipe(id):
    sql('DELETE FROM recipes WHERE id=%s RETURNING *', [id])
