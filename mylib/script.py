import wikipedia
from textblob import TextBlob

def wiki(name="War Goddess", length=1):
    """wikipedia data fetcher"""
    my_wiki = wikipedia.summary(name, length)
    return my_wiki


def search_wiki(name):
    result = wikipedia.search(name)
    return result

def phrase(name):
    result = wiki(name)
    blob = TextBlob(result)
    return blob.noun_phrases

# print(search_wiki("barack"))