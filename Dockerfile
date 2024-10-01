FROM postgres:15.7

# Update package repository and install pgvector extension
RUN apt-get update && \
    apt-get install -y postgresql-15-pgvector && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
