# Base image
FROM python:3.13.5-slim

# Install necessary dependencies
RUN apt-get update && \
    apt-get install -y git && \
    pip install --upgrade pip huggingface_hub && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Default command: start bash
CMD ["/bin/bash"]
