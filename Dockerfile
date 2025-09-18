# Use a lightweight Python image
FROM python:3.11-alpine

# Set working directory
WORKDIR /app

# Copy all files
COPY . .

# Make script executable
RUN chmod +x wisecow.sh

# Expose the port
EXPOSE 4499

# Run the app
CMD ["./wisecow.sh"]
