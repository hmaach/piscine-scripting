def remember_the_apple(shopping_list):
    if len(shopping_list) == 0:
        return shopping_list
    
    for elem in shopping_list:
        if elem == "apple":
            return shopping_list
    
    shopping_list.append("apple")
    
    return shopping_list
