def do_punishment(f_part, s_part, nbr):
    result = ""
    
    for i in range(nbr):
        result += f_part.strip() + " " + s_part.strip() + ".\n"

    return result
