FROM mcr.microsoft.com/playwright
COPY . .
RUN ["python3","-m","pip","install","-r","requirements.txt"]
RUN ["rfbrowser","init"]
#RUN ["python3","-m","robot","-d","results","playwright_test.robot"]
#CMD ["tail","-f","/dev/null"]