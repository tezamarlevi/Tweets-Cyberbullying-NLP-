# LIBRARY IMPORTING
from flask import Flask, request, jsonify
import pandas as pd
import tensorflow as tf
import nltk
import re
from nltk.corpus import stopwords
from nltk.tokenize import word_tokenize
from nltk.stem import PorterStemmer
from nltk.stem import WordNetLemmatizer

# NLTK DOWNLOAD
nltk.download('stopwords')
nltk.download('punkt')
nltk.download('wordnet')
nltk.download('omw-1.4')


app = Flask(__name__)

# initiate model & columns
LABEL = ['Not Cyberbullying', 'Cyberbullying about Gender', 'Cyberbullying about Religion', 
        'Other Cyberbullying', 'Cyberbullying about Age', 'Cyberbullying about Ethnicity']


# Load Model and Preprocessing
model_dnn = tf.keras.models.load_model('best_dnn_1')

# Function for TEXT PROSES
def text_proses(teks):
    # Text Proccesed Punctation
    teks = teks.lower()
    text_processed = re.sub("@[A-Za-z0-9_]+"," ", teks)               
    text_processed = re.sub("#[A-Za-z0-9_]+"," ", text_processed)     
    text_processed = re.sub(r"\\n"," ",text_processed)                
    text_processed = text_processed.strip()
    text_processed = re.sub(r"http\S+", " ", text_processed)          
    text_processed = re.sub(r"www.\S+", " ", text_processed)          
    text_processed = re.sub(":p"," ", text_processed)                 
    text_processed = re.sub("[^A-Za-z\s']"," ", text_processed)       
    text_processed = re.sub("rt"," ",text_processed)
    # text_processed = re.sub(" ", text_processed)         

    # Remove Stopwords
    stopword_ = list(set(stopwords.words('english')))
    tokens = word_tokenize(text_processed)
    text_stopword = [word for word in tokens if word not in stopword_]

    # Text Stemming
    ps = PorterStemmer()
    text_stemed = [ps.stem(word) for word in text_stopword]
    teks = ps.stem(text_processed)

    # Text Lemmatization
    lemmatizer = WordNetLemmatizer()
    return " ".join([lemmatizer.lemmatize(word) for word in text_stemed])


# Backend
@app.route("/")
def welcome():
    return "<h3>Selamat Datang di Program Backend Model Saya</h3>"

@app.route("/predict", methods=["GET", "POST"])
def tex_categorization():
    if request.method == "POST":
        content = request.json
        try:
            data = {'tweet_text': content['tweet_text']}
            data_new = pd.DataFrame([data])
            # text_preprocess = text_proses([data_new])
            res = model_dnn.predict(data_new).argmax(axis=1)
            # res = tf.nn.softmax(model_dnn.predict([text_preprocess])).numpy().argmax(axis=1)
            result = {'prediction': int(res[0]),
                      'prediction_name':LABEL[int(res[0])]}
            response = jsonify(success=True,
                               result=result)
            return response, 200

        except Exception as e:
            response = jsonify(success=False,
                               message=str(e))
            return response, 400
    # return dari method get
    return "<p>Silahkan gunakan method POST untuk mode <em>inference model</em></p>"
# app.run()


