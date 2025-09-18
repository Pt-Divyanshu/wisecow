# Use lightweight Linux image
FROM alpine:3.18

# Install bash, dos2unix, and python3
RUN apk add --no-cache bash dos2unix python3 py3-pip

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Fix line endings and permissions
RUN dos2unix wisecow.sh
RUN chmod +x wisecow.sh

# Expose port
EXPOSE 3000

# Run the app
CMD ["sh", "./wisecow.sh"]
