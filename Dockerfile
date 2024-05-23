FROM ubuntu:22.04
#
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && \
    apt install -y curl wget unzip jq apt-transport-https
RUN curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.29.3/2024-04-19/bin/linux/amd64/kubectl && \
    chmod +x ./kubectl && mv ./kubectl /usr/local/bin/ && \
    curl --silent -O https://litmusctl-production-bucket.s3.amazonaws.com/litmusctl-linux-amd64-1.5.0.tar.gz && \
    tar -zxvf litmusctl-linux-amd64-1.5.0.tar.gz && \
    chmod +x litmusctl && mv litmusctl /usr/local/bin/litmusctl && rm litmusctl-linux-amd64-1.5.0.tar.gz && \
    rm -rf /usr/local/bin/aws && rm -rf /usr/local/bin/aws_completer && rm -rf /usr/local/aws-cli  && rm -rf ~/.aws/ && rm -rf /usr/local/aws && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip -qo awscliv2.zip && \
    ./aws/install --bin-dir /usr/local/bin --install-dir /usr/local/aws-cli --update