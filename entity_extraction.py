from flask import Flask,url_for,render_template,request
import spacy
from spacy import displacy
nlp = spacy.load('en_core_web_sm')
import json
from flaskext.markdown import Markdown

app = Flask(__name__)
Markdown(app)


@app.route('/')
def index():

	return render_template('index.html')


@app.route('/extract',methods=["GET","POST"])
def extract():
	if request.method == 'POST':
		raw_text = request.form['rawtext']
		docx = nlp(raw_text)
		html = displacy.render(docx,style="ent")
		html = html.replace("\n\n","\n")
		result = html

	return render_template('result.html',rawtext=raw_text,result=result)


if __name__ == '__main__':
	app.run(debug=True)