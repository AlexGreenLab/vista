# Lightweight reproducible environment using Python official image
FROM python:3.10-slim

ENV PYTHONUNBUFFERED=1
WORKDIR /app

# Install minimal system deps
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    git \
    && rm -rf /var/lib/apt/lists/*

# Copy dependency file and install Python deps
COPY requirements.txt /app/requirements.txt
RUN python -m pip install --upgrade pip
RUN pip install -r /app/requirements.txt

# Copy repository files into container
COPY . /app

# Add src to PYTHONPATH so you can run modules in src/
ENV PYTHONPATH=/app/src

# Default command: open a bash shell (override to run scripts)
CMD ["bash"]