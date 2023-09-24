ARG base=nginx:bookworm
FROM ${base}
ARG base

# cf. https://github.com/iann0036/former2/blob/master/Dockerfile
RUN apt update; \
    apt install -y git; \
    mkdir -p /former2; \
    git clone https://github.com/iann0036/former2.git /former2; \
    mv /former2/* /former2/.* /usr/share/nginx/html/; \
    rmdir /former2
