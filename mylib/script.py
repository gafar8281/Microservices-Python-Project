import wikipedia


def wiki(name="War Goddess", length=1):
    """wikipedia data fetcher"""
    my_wiki = wikipedia.summary(name, length)
    return my_wiki


def search_wiki(name):
    result = wikipedia.search(name)
    return result

# print(search_wiki("barack"))