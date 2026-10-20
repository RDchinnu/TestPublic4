#define base image
FROM python:3.14-slim (last pushed 3 days ago)

#install dependency
RUN pip install streamlit

#set working directory
WORKDIR /var

#copy source code
COPY app.py .

#expose streamlit port and run
EXPOSE 8501
CMD ["streamlit", "run", "app.py"]