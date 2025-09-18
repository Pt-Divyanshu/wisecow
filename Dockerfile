# Use a lightweight Linux image
FROM alpine:3.18

# Install bash and dos2unix
RUN apk add --no-cache bash dos2unix

# Set working directory
WORKDIR /app

# Copy project files
COPY . .

# Convert Windows line endings to Unix line endings
RUN dos2unix wisecow.sh

# Make script executable
RUN chmod +x wisecow.sh

# Expose port (adjust if your app uses a different port)
EXPOSE 3000

# Run the app using sh
CMD ["sh", "./wisecow.sh"]
