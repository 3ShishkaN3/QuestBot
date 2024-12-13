FROM python:3.13-slim

RUN apt-get update && apt-get install -y git && \
    apt-get clean

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt && \
    bash install_vk-api.sh && \
    apt-get remove -y git && \
    apt-get autoremove -y && \
    pip uninstall -y setuptools

COPY . .

RUN mkdir -p /app/data /app/logs && \
    python -m unittest discover -s tests -p "test_*.py" -v

CMD ["python", "-m", "src.main"]
