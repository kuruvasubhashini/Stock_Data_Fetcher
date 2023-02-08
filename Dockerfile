FROM python:3.7

CMD mkdir /app
COPY . /app

WORKDIR /app

EXPOSE 8000

RUN pip3 install -r requirements.txt

CMD streamlit run app.py
