FROM python:3.7

CMD mkdir /Stock_Data_Fetcher
COPY . /Stock_Data_Fetcher

WORKDIR /Stock_Data_Fetcher

EXPOSE 8501

RUN pip3 install -r requirements.txt

CMD streamlit run app.py
