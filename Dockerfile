FROM i386/ubuntu:14.04

RUN dpkg --add-architecture i386 && \
    apt-get update && apt-get install -y \
    libx11-6:i386 libxrender1:i386 libxrandr2:i386 libxcursor1:i386 \
    libfreetype6:i386 libfontconfig1:i386 libpng12-0:i386 \
    libjpeg62:i386 zlib1g:i386 libssl1.0.0:i386 \
    libgl1-mesa-glx:i386 libsm6:i386 libice6:i386 \
    libxi6:i386 libxext6:i386 libxfixes3:i386 \
    ca-certificates xauth && \
    apt-get clean
