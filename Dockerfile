# Use a lightweight Nginx image to serve the static content
FROM nginx:alpine

# Copy the standalone HTML file as the root index.html
COPY zibbo-standalone.html /usr/share/nginx/html/index.html

# Configure Nginx to listen on port 8080 (Cloud Run's default port)
RUN sed -i 's/80;/8080;/g' /etc/nginx/conf.d/default.conf

# Expose port 8080
EXPOSE 8080

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
