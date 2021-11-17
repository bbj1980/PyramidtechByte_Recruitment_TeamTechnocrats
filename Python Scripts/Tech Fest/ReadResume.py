# Import required libraries
import PyPDF2
import string
import pandas as pd
def ReadandSummaryFile(fileName):
    try:
        # Open pdf file
        pdfFileObj = open(fileName,'rb')
        # Read file
        pdfReader = PyPDF2.PdfFileReader(pdfFileObj)
        # Get total number of pages
        num_pages = pdfReader.numPages
        # Initialize a count for the number of pages
        count = 0
        # Initialize a resumeText empty etring variable
        resumeText = ""
        # Extract resumeText from every page on the file
        while count < num_pages:
            pageObj = pdfReader.getPage(count)
            count +=1
            resumeText += pageObj.extractText()
        normalResumeText = resumeText
        # Convert all strings to lowercase
        resumeText = resumeText.lower()
        # Remove numbers
        #resumeText = re.sub(r'\d+','',resumeText)
        # Remove punctuation
        #resumeText = resumeText.translate(str.maketrans('','',string.punctuation))
        return resumeText
    except Exception as e:
        # If an error occurred, print line number and error message
        import traceback, sys
        tb = sys.exc_info()[2]
        print("Line %i" % tb.tb_lineno)
        print (e.strerror)