from fastapi import FastAPI, File, UploadFile
from PyPDF2 import PdfReader  # Updated import
import docx

app = FastAPI()

def extract_text_from_pdf(file):
    reader = PdfReader(file)  # Updated class
    text = ""
    for page in reader.pages:  # Use pages directly
        text += page.extract_text()
    return text

def extract_text_from_docx(file):
    doc = docx.Document(file)
    text = "\n".join([para.text for para in doc.paragraphs])
    return text

@app.post("/extract-text/")
async def extract_text(file: UploadFile = File(...)):
    if file.filename.endswith('.pdf'):
        text = extract_text_from_pdf(file.file)
    elif file.filename.endswith('.docx'):
        text = extract_text_from_docx(file.file)
    else:
        text = (await file.read()).decode('utf-8')
    
    return {"text": text}
