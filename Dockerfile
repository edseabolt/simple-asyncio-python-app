FROM python:3.7

WORKDIR /root

COPY main.py requirements.txt ./

RUN \
	pip install -r requirements.txt && \
  rm -f requirements.txt

ENV PYTHONPATH "/root"

EXPOSE 8088

CMD ['python', '/root/main.py']

