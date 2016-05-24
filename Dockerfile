FROM java:7

RUN apt-get update && apt-get install -y curl && \
    curl -L https://www.jpm4j.org/install/script > /tmp/jpm.sh && \
    bash /tmp/jpm.sh && \
    jpm install com.codacy:codacy-coverage-reporter:assembly && \
    rm /tmp/jpm.sh && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /src
