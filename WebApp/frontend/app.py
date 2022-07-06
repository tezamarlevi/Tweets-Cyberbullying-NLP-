import streamlit as st
import requests

st.set_page_config(
    page_title="Text Categorization",
    page_icon="🖥",
    layout="centered",
    initial_sidebar_state="expanded",
    menu_items={
        'Get Help': 'https://www.github.com/tezamarlevi',
        'Report a bug': "https://www.google.com/",
        'About': "Hi everybody, let me introduce myself, \
        I am Teza Marlevi Fajar and I am a junior data scientist \
        at Rockstar Automotive Company, on this \
        website I will make app for predict price. \
        This second time make website and i hope you enjoyed it"
    }
)


st.header('Cyberbullying')
st.write('Cyberbullying is bullying with the use of digital technologies. \
It can take place on social media, messaging platforms, gaming platforms and \
mobile phones. It is repeated behaviour, aimed at scaring, angering or shaming \
those who are targeted.')

st.write("Before making predictions, please enter your identity")

st.text_input('Name')
st.text_input('Email')
st.text_input('Phone Number')
st.write(" ")
st.write(" ")
st.write(" ")
st.write("You can input your text, to checking that sentences include \
bullying or not")
tweet_text = st.text_input('Input Youre Tweet')

# inference

data = {'tweet_text': tweet_text }

# URL = "http://127.0.0.1:5000/predict" # sebelum push backend
URL = "https://cyberbullying-backend.herokuapp.com/predict" # setelah push backend

# komunikasi
r = requests.post(URL, json=data)
res = r.json()

if r.status_code == 200:
    agree = st.checkbox("Let's Predict")
    if agree:
        st.title(res['result']['prediction_name'])
elif r.status_code == 400:
    st.title("ERROR")
    st.write(res['message'])
st.write('  ')      
st.write('  ')
st.write('  ')
st.write('  ')
st.write('  ')
st.write('  ')
slide = st.slider('Rate this website', 0, 5, 0)
if slide == 0 :
    st.caption('swipe to rate')
else :
    st.write('Thank You')

st.write('  ')
title = st.text_input('💬 Commenting app')
if title :
    st.write('Thank you for comment')