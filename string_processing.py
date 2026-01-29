import re

def tokenize(sentence):
    sentence = sentence.lower()
    
    sentence = re.sub(r"[^a-z0-9\s]", " ", sentence)
    
    tokens = sentence.split()
    
    return tokens

