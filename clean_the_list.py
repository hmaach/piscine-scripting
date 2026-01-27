def clean_list(shopping_list):
    if not isinstance(shopping_list, list):
        raise ValueError("Input must be a list.")

    cleaned_list = []
    for item in shopping_list:
        if item is not None and item not in cleaned_list:
            cleaned_list.append(item)

    return cleaned_list

