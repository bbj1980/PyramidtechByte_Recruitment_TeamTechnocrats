import pandas as pd
def CompileResumeProfile(terms,scores):
    summary = pd.DataFrame(scores,index=terms.keys(),columns=['score']).sort_values(by='score',ascending=False)
    return summary
