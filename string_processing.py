import string

def tokenize(sentence):
    result = []
    
    translator = str.maketrans('', '', string.punctuation)
    s = sentence.lower().replace("'", " ").translate(translator) 

    return s.split()
