FROM python:3.12-slim

WORKDIR /workspace/docker-study/test-file

COPY . .

RUN pip install -r requirements.txt

EXPOSE 8501

CMD ["python", "app.py"]
