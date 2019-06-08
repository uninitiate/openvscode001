FROM gitpod/workspace-full:latest

USER root


# Do your root Docker stuff here

RUN apt-get update                 \ 
    && apt-get clean               \
    && rm -rf /var/cache/apt/*     \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/*


USER gitpod

RUN mkdir -p /home/gitpod/docker-logs                   \ 
    && touch /home/gitpod/docker-logs/myDockerlog.txt   \  
 
 
RUN echo "Hello from the Dockerfile build/n"                  >> /home/gitpod/docker-logs/myDockerlog.txt     \
    && echo "Do most of your non-install Docker Stuff here/n" >> /home/gitpod/docker-logs/myDockerlog.txt     

# Do most of your Docker stuff here 

RUN echo "Good bye from the Dockerfile build/n"               >> /home/gitpod/docker-logs/myDockerlog.txt





# Give back control
USER root
# Cleaning
RUN apt-get clean
