def day_from_number(day_number):

    if day_number < 1 or day_number > 7:
        return None

    days = ("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday")
    
    return days[day_number - 1]


def day_to_number(day):
   
    days = ("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday")
    
    for i, d in enumerate(days):
        if d == day:
            return i + 1

    return None
