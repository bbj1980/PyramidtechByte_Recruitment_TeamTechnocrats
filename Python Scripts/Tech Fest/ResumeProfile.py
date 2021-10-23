def ProfileResume(terms,text):
    # Initializie score counters for each area
    quality = 0
    operations = 0
    supplychain = 0
    project = 0
    fullStack=0
    data = 0
    # Create an empty list where the scores will be stored
    scores = []
    # Obtain the scores for each area
    for area in terms.keys():
        if area == 'Quality/Six Sigma':
            for word in terms[area]:
                if word in text:
                    quality +=1
            scores.append(quality)
        elif area == 'Operations management':
            for word in terms[area]:
                if word in text:
                    operations +=1
            scores.append(operations)
        elif area == 'Supply chain':
            for word in terms[area]:
                if word in text:
                    supplychain +=1
            scores.append(supplychain)
        elif area == 'Project management':
            for word in terms[area]:
                if word in text:
                    project +=1
            scores.append(project)
        elif area == 'Full Stack':
            for word in terms[area]:
                if word in text:
                    fullStack +=1
            scores.append(fullStack)
        elif area == 'Database':
            for word in terms[area]:
                if word in text:
                    data +=1
            scores.append(data)
       
    return scores