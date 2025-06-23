FROM python:3.12-slim

WORKDIR /workspace/docker-study/test-file

RUN pip install -r requirements.txt

COPY . .

EXPOSE 8501

CMD ["streamlit", "run", "app.py", "--server.port=8501", "--server.headless=true"]
