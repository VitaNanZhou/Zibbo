# Use a lightweight Nginx image to serve the static content
FROM nginx:alpine

# Copy the standalone HTML file as the root index.html
COPY zibbo-standalone.html /usr/share/nginx/html/index.html

# Expose port 80 for web traffic
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
