from ReadResume import ReadandSummaryFile
from ResumeProfile import ProfileResume
from  DictionarySetup import terms
from  ResumeScore import CompileResumeProfile
def main():
    compileTextFromResume = ReadandSummaryFile('Resume\Bharat Joshi.pdf');
    # print(compileTextFromResume)
    matchedScore = ProfileResume(terms,compileTextFromResume)
    print(CompileResumeProfile(terms,matchedScore))
main()