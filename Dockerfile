# Import Base Image
FROM python:3.12

WORKDIR /Apps

COPY requirements.txt .

RUN python -m venv venv
# RUN source venv/bin/activate
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD ["python", "Apps.py"]