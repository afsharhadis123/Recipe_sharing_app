from flask import render_template, request, redirect, session
from models.recipe import all_recipes, get_recipe, create_recipe, update_recipe, delete_recipe, like_recipe
from services.session_info import current_user

def index():
  recipes = all_recipes()
  return render_template('recipes/index.html', recipes=recipes, current_user=current_user())

def new():
  return render_template('recipes/new.html')


def create():

  name = request.form.get('name')
  description = request.form.get('description')
  ingredients = request.form.get('ingredients')
  instructions = request.form.get('instructions')
  image_url = request.form.get('image_url')
  create_recipe(name, description, ingredients, instructions, image_url)
  return redirect('/')

def update(id):
 
  name = request.form.get('name')
  description = request.form.get('description')
  ingredients = request.form.get('ingredients')
  instructions = request.form.get('instructions')
  image_url = request.form.get('image_url')
  update_recipe(id, name, description, ingredients, instructions, image_url)
  return redirect('/')

def edit(id):
  recipe = get_recipe(id)
  return render_template('recipes/edit.html', recipe=recipe)

def delete(id):
  delete_recipe(id)
  return redirect('/')

def like(id):
  like_recipe(id, session['user_id'])
  return redirect('/')