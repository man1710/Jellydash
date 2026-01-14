FROM python:3.12-slim

WORKDIR /app

# OS deps for temps + disks + network iface tools
RUN apt-get update && apt-get install -y --no-install-recommends \
    lm-sensors \
    smartmontools \
    util-linux \
    iproute2 \
    net-tools \
 && rm -rf /var/lib/apt/lists/*

# Python deps
COPY app/requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# App code
COPY app/ /app/

EXPOSE 8787
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8787"]
