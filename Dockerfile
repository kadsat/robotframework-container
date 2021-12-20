FROM mcr.microsoft.com/playwright
COPY . .
RUN ["python3","-m","pip","install","-r","requirements.txt"]
RUN ["rfbrowser","init"]