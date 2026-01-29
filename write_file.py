def to_do(tasks):
    with open("output.txt", "w") as file:
        for date, task in tasks:
            file.write(f"{date.strftime('%A %d %B %Y')}: {task}\n")

