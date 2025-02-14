FROM alpine:latest

LABEL maintainer="Earl Ruby <wtf@earlruby.net>"
LABEL description="A webapp to define acronyms, words, and phrases"

# Update the package index and install necessary packages
RUN apk update && apk add --no-cache bash python3 py3-pip py3-virtualenv

# Create a directory for the application
RUN mkdir -p /wtf

# Copy application files into the container
COPY . /wtf
RUN cd /wtf && \
    virtualenv ./ && \
    . bin/activate && \
    pip install --upgrade pip && \
    pip install -r requirements.txt

# Set the working directory
WORKDIR /wtf

# Expose a port (if needed)
EXPOSE 5000

# Define the command to run when the container starts
CMD ["./run-wtf.sh"]
