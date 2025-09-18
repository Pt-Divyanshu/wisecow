# Use a lightweight Linux image
FROM alpine:3.18

# Install bash if not already present
RUN apk add --no-cache bash

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Make sure the script is executable
RUN chmod +x wisecow.sh

# Expose port the app uses (adjust if needed)
EXPOSE 3000

# Command to run the app
CMD ["./wisecow.sh"]
