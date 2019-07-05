FROM python:2.7
WORKDIR /ca-project
# ENV FLASK_APP run.py
# ENV FLASK_RUN_HOST 0.0.0.0
# RUN apk add --no-cache gcc musl-dev linux-headers
# COPY requirements.txt /ca-project/requirements.txt
COPY . /ca-project
# COPY run.py /ca-project/run.py
RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "run.py"]
