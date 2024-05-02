#기반 이미지
FROM python:3.8 as build

#실행할 명령어


#작업 디렉토리 설정
WORKDIR /usr/src/app

#파일을 복사
COPY requirements.txt ./

#패키지 설치
RUN pip install django
RUN pip install djangorestframework

#현재 디렉토리 모든 내용 기반 이미지 복사
COPY . .

#포트 개방
EXPOSE 80

#명령 수행
CMD ["python","manage.py","runserver","0.0.0.0:80"]