from ReadResume import ReadandSummaryFile
from ResumeProfile import ProfileResume
from  ResumeScore import CompileResumeProfile
from DictionarySetup import terms
from sqlinsert import insertResumeSkill

def main():
    resumeName= 'Bharat Joshi.pdf'
    compileTextFromResume = ReadandSummaryFile(resumeName);
    # print(compileTextFromResume)
    matchedScore = ProfileResume(terms,compileTextFromResume)
    insertResumeSkill(matchedScore)
    a=10
    #insertResumeSkill()
   # print(CompileResumeProfile(terms,matchedScore[0]))
main()
