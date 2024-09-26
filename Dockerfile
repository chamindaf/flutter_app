FROM nginx:alpine

# Copy the config files
ADD app.conf /etc/nginx/
# Clears the static files
RUN rm -rf /usr/share/nginx/html
# Copy the static web content

COPY ./build/web   /usr/share/nginx/html

#ADD . /usr/share/nginx/html

# Suggests to bind port 80 to any port of the host system
EXPOSE 80