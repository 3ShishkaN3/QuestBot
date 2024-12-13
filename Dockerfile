
# Dockerfile для запуска проекта
FROM python:3.13-slim

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt && \
    git clone https://github.com/AnakhSun/vk_api.git && \
    cd vk_api && \
    python setup.py install && \
    cd .. && rm -rf vk_api && \
    apt-get remove -y git && \
    apt-get autoremove -y && \
    pip uninstall -y setuptools

COPY . .

CMD ["python", "-m", "src.main.py"]
