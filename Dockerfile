FROM alpine:latest AS builder

RUN apk add --no-cache git
# Install the Hugo go app.
RUN apk add --update hugo

# Set the working directory
WORKDIR /src

# Copy the repository files (including .git for submodules)
COPY . .

# Initialize and update submodules
RUN git submodule update --init --recursive

# Build the Hugo site
RUN hugo --minify --destination /public


# Use a lightweight web server for serving the static site
FROM nginx:alpine

# Copy built files from the Hugo build stage
COPY --from=builder /public /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]