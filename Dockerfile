# Defining base image
FROM python:3.8.2-slim
RUN pip install dvc
RUN mkdir demo

EXPOSE 5000
CMD [ "mlflow", "ui", "--host", "0.0.0.0" ]
CMD python ./test.py

