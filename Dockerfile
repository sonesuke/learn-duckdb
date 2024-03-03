
FROM --platform=linux/amd64 debian:bullseye
# specify the platform to build the image 

## Install dependencies for build duckdb
RUN apt-get update && apt-get install -y \
    python3 \
    git \
    g++ \
    cmake \
    ninja-build \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*


