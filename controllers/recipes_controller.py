from flask import render_template, request, redirect, session
from models.recipe import all_recipes, get_recipe, create_recipe, update_recipe, get_reviews, add_review_recipe, like_recipe, delete_recipe
from services.session_info import current_user



def index():
  recipes = all_recipes()
  return render_template('recipes/index.html', recipes=recipes, current_user=current_user())

def new():
  return render_template('recipes/new.html')


def create():

  name = request.form.get('name')
  category = request.form.get('category')
  description = request.form.get('description')
  ingredients = request.form.get('ingredients')
  instructions = request.form.get('instructions')
  image_url = request.form.get('image_url')
  create_recipe(name, category, description, ingredients, instructions, image_url)
  return redirect('/')


def update(id):
  name = request.form.get('name')
  category = request.form.get('category')
  description = request.form.get('description')
  ingredients = request.form.get('ingredients')
  instructions = request.form.get('instructions')
  image_url = request.form.get('image_url')
  update_recipe(id, name, category, description, ingredients, instructions, image_url)
  return redirect('/')




def edit(id):
  recipe = get_recipe(id)
  return render_template('recipes/edit.html', recipe=recipe)

def review(id):
    print(id)
    recipe = get_recipe(id)
    reviews = get_reviews(id)
    
    print(reviews)
    return render_template('recipes/review.html', recipe=recipe, reviews=reviews)

def add_review(id):
    user_name = request.form.get('user_name')
    comment = request.form.get('comment', '')
    rating = request.form.get('rating', 1)
    add_review_recipe(id, user_name, comment, rating)
    return redirect('/')

def like(id):
   
    like_recipe(id, session['user_id'])
    return redirect('/')

def delete(id):
  delete_recipe(id)
  return redirect('/')