FROM python:3.7

CMD mkdir /streamlit
COPY . /streamlit

WORKDIR /streamlit

EXPOSE 8501

RUN pip3 install -r requirements.txt

CMD streamlit run app.py
