from ReadResume import ReadandSummaryFile
from ResumeProfile import ProfileResume
from  ResumeScore import CompileResumeProfile
from DictionarySetup import terms
from sqlinsert import InsertResumeSkill
from WorldtoPdf import ConvertdDoctoPdf
from ExtractName import extract_names
from ExtractInfofromResume import extract_phone_number,extract_emails
import pathlib
#from pyresparser import ResumeParser
def main():
    resumeName='./Resume/Bharat Joshi.pdf'
    resumeName='./Resume/DeepakShiv_ETLArchitect_8+YearsExp.pdf'
    fileExtension = pathlib.Path(resumeName).suffix
    # if(fileExtension != 'pdf'):
    #     resumeName= ConvertdDoctoPdf(resumeName)
    compileTextFromResume = ReadandSummaryFile(resumeName);

    # Get Phone Number from resume with the help of regular expressions
    phoneNumber = extract_phone_number(compileTextFromResume)
    print ('Phone Number' , phoneNumber)
    
    # Get email from resume with the help of regular expressions
    email =extract_emails(compileTextFromResume)
    print ('Email:' ,  email);
    
    # Get name from resume with the help of regular NLP
    name = extract_names(compileTextFromResume)
    print ('Name' , name);
    
    #print(compileTextFromResume)
    compileTextFromResume = compileTextFromResume.lower()
    candidateExpertise = ProfileResume(terms,compileTextFromResume)
    print ('Skillset' , candidateExpertise);
    
    #insertResumeSkill(matchedScore,resumeName)

if __name__ == '__main__':
    main()
#test()
