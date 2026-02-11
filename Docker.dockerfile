# Use official nginx image
FROM nginx:alpine

# Remove default nginx html
RUN rm -rf /usr/share/nginx/html/*

# Copy our html file into nginx folder
COPY index.html /usr/share/nginx/html/

# Expose port 80
EXPOSE 80