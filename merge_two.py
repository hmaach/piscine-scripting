import json

def merge_two(first_dict):
    merged = first_dict.copy()

    while True:
        print("Add a new entry:")
        key = input("key: ")

        if key == "exit":
            break

        value = int(input("value: "))
        merged[key] = value

    return json.dumps(merged)


