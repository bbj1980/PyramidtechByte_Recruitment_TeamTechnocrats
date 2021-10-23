from ReadResume import ReadandSummaryFile
from ResumeProfile import ProfileResume
from  ResumeScore import CompileResumeProfile
from DictionarySetup import terms
from sqlinsert import insertResumeSkill
from WorldtoPdf import ConvertdDoctoPdf
import pathlib
def main():
    resumeName='Bharat.Joshi1.pdf'
    fileExtension = pathlib.Path(resumeName).suffix
    # if(fileExtension != 'pdf'):
    #     resumeName= ConvertdDoctoPdf(resumeName)
    compileTextFromResume = ReadandSummaryFile(resumeName);
    # print(compileTextFromResume)
    matchedScore = ProfileResume(terms,compileTextFromResume)
    insertResumeSkill(matchedScore,resumeName)
#Calling Point
main()
