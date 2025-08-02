# frontend/app.py
import streamlit as st
import requests

st.title("Quant Sight: AI Driven Equity & Derivatives Suite")
st.write("Welcome! Enter a stock ticker to get started: ")

ticker = st.text_input("Ticker", "AAPL")

if ticker:
    st.write(f"You entered: {ticker}")
    # api call
    try:
        r = requests.get("http:localhost:8000")
        st.success(r.json())
    except Exception as e:
        st.Error("Backend not running: " + str(e))