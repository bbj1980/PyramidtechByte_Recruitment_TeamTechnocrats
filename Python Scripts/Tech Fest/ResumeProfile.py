from collections import namedtuple
def ProfileResume(terms,text):
    # Initializie score counters for each area
    programmingLanguage = ''
    candidateProfile =[]
    obj={}
    # Create an empty list where the scores will be stored
    scores = []
    # Obtain the scores for each area
    for area in terms.keys():
        programmingLanguage=''
        for word in terms[area]:
                if word in text:
                    programmingLanguage += word + ','
        obj[area] = programmingLanguage
    return obj