FROM python:3

WORKDIR /usr/src/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir /usr/src/app/results

RUN robot -d /usr/src/app/results testCase.robot