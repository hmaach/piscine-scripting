def clean_list(shopping_list):
    if len(shopping_list) == 0:
        return shopping_list

    result = []
    i = 1
    milk_found = False
    
    for elem in shopping_list:
        if elem == "milk":
                milk_found = True
        
        
    if milk_found == False:
        shopping_list.append("milk")


    for elem in shopping_list:
        cleaned = str(i) + "/ " + elem.strip().capitalize()
        result.append(cleaned)
        i += 1

    return result
