import os

def add_numbers(filename):
    labels = list()
    with open(filename, "r") as f:
        labels = f.readlines()
    #print(labels)
    with open(filename, "w") as f:
        for i, line in enumerate(labels):
            f.write(str(i)+line)

for file in (os.listdir("./")):
    if (file.endswith(".txt")):
        add_numbers(file)
