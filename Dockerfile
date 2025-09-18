# Use lightweight Python Alpine image
FROM python:3.11-alpine

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Make wisecow.sh executable
RUN chmod +x wisecow.sh

# Expose port 3000
EXPOSE 3000

# Run the app
CMD ["./wisecow.sh"]
