FROM python:3.12

WORKDIR /app

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6 -y

RUN pip install --upgrade pip
RUN pip install marker-pdf uvicorn fastapi python-multipart

EXPOSE 8001

ENTRYPOINT ["marker_server", "--port", "8001", "--host", "0.0.0.0"]