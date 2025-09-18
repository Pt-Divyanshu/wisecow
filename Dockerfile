FROM python:3.11-alpine

WORKDIR /app

# Install dos2unix for line ending conversion
RUN apk add --no-cache bash dos2unix

# Copy project files
COPY . .

# Convert line endings and make script executable
RUN dos2unix wisecow.sh
RUN chmod +x wisecow.sh

# Expose port
EXPOSE 4499

# Run the app
CMD ["./wisecow.sh"]
