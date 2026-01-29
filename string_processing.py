import string

def tokenize(sentence):
    result = []
    
    translator = str.maketrans(string.punctuation, " " * len(string.punctuation))
    s = sentence.lower().translate(translator) 

    return s.split()
