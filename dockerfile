
# Use the Nginx image from Amazon ECR Public to avoid rate limits
FROM public.ecr.aws/nginx/nginx:alpine

# Copy the local index.html file into the container
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80
EXPOSE 80

# Start Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"]
