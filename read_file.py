import json

def get_recipes(file_name):
    with open(file_name, 'r') as file:
        return json.load(file)

