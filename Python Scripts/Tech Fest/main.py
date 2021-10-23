from ReadResume import ReadandSummaryFile
from ResumeProfile import ProfileResume
from  ResumeScore import CompileResumeProfile
from DictionarySetup import terms
def main():
    compileTextFromResume = ReadandSummaryFile('Resume\Bharat Joshi.pdf');
    # print(compileTextFromResume)
    matchedScore = ProfileResume(terms,compileTextFromResume)
    print(CompileResumeProfile(terms,matchedScore))
main()