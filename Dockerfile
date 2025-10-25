
FROM python:3.14-alpine 

LABEL maintainer="mrmx" \
      description="easyeda2kicad - EasyEDA to KiCad" \
      version="1.0"

WORKDIR /app
VOLUME [ "/data" ]

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT ["python", "-m", "easyeda2kicad"]