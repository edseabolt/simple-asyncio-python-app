FROM python:3.7

WORKDIR /root

COPY main.py requirements.txt ./

RUN \
	python3.7 pip install -r requirements.txt && \
  rm -f requirements.txt

ENV PYTHONPATH "/root"

CMD ['python3.7', '/root/main.py']

