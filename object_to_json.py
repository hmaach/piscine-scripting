import json

class User:
    username = 'user'
    email = 'something@mail.com'


def create_new_user(json_string):
    try:
        data = json.loads(json_string)
    except json.JSONDecodeError:
        return User()

    if "username" in data and "email" in data:
        user = User()
        user.username = data["username"]
        user.email = data["email"]
        return user

    return User()


def user_to_json(user):
    return json.dumps(user.__dict__)

