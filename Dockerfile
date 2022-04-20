FROM python


RUN adduser app
USER app
WORKDIR /app

COPY --chown=app:app requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY --chown=worker:worker src/ .

CMD ["python3", "./app.py"]