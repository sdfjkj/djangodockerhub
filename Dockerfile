FROM python

WORKDIR /usr/src/app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .

EXPOSE 80
CMD ["python". "manage.py", "runserver", "0.0.0.0:80"]
# 파이썬은 여기만 바뀜 : CMD ["python". "manage.py", "runserver", "0.0.0.0:80"]
