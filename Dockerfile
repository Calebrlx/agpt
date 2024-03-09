FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 8000

RUN python -m autogpt.app.main

CMD ["python", "autogpt/app/main.py"]

# CMD ["python", "autogpt/app/.py"]