FROM python:latest
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt
ENV AWS_ACCESS_KEY_ID=AKIAEXAMPLE
ENV AWS_SECRET_ACCESS_KEY=secret
EXPOSE 8000
CMD ["python", "app.py"]
