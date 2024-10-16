# Use the official Nginx image as a base image
FROM nginx:latest

# Set the working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy your HTML files into the container
COPY /home/ec2-user/myweapp/ .

# Expose port 7080
EXPOSE 7080

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
