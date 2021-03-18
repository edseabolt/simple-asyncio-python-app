FROM python:3.7

WORKDIR /root

COPY requirements.txt .

RUN \
	pip install -r requirements.txt && \
  rm -f requirements.txt

COPY main.py .

ENV PYTHONPATH "/root"

EXPOSE 8088

ENTRYPOINT ["/root/main.py"]

