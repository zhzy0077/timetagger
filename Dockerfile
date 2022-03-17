FROM python:slim


RUN pip --no-cache-dir install pip --upgrade && pip --no-cache-dir install \
    uvicorn uvloop httptools \
    fastuaparser itemdb>=1.1.1 asgineer requests \
    jinja2 markdown pscript \
    pyjwt cryptography


RUN pip install -U timetagger

WORKDIR /root
COPY . .
CMD ["python", "run.py"]
