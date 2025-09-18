# Use lightweight Python image
FROM python:3.11-alpine

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Convert script to Unix line endings and make it executable
RUN apk add --no-cache dos2unix bash \
    && dos2unix wisecow.sh \
    && chmod +x wisecow.sh

# Expose port
EXPOSE 4499

# Run the app
CMD ["./wisecow.sh"]
