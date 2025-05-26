# Use a lightweight Nginx image as the base 
FROM nginx:alpine # Remove the default Nginx configuration
RUN rm /etc/nginx/conf.d/default.conf 
#Copy your custom Nginx configuration 
COPY nginx.conf /etc/nginx/conf.d/dino-game.conf 
# Copy the game files into the Nginx public directory 
COPY index.html /usr/share/nginx/html/ 
# Expose port 80 to the outside world 

EXPOSE 80 # Command to run Nginx when the container starts
CMD ["nginx", "-g", "daemon off;"] 
