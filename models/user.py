from db.db import sql
import bcrypt

def create_user(first_name, last_name, email, user_name, password):
  password_digest = bcrypt.hashpw(password.encode(), bcrypt.gensalt()).decode()
  sql('INSERT INTO users(first_name, last_name, email, user_name, password_digest) VALUES(%s, %s, %s, %s, %s) RETURNING *', [first_name, last_name, email, user_name, password_digest])

def find_user_by_use(user_name):
  users = sql('SELECT * FROM users WHERE user_name = %s', [user_name])
  # if one or more users is found:
  if len(users) > 0:
    return users[0] # return the first user.
  else:
    return None

def find_user_by_id(id):
  users = sql('SELECT * FROM users WHERE id = %s', [id])
  return users[0]