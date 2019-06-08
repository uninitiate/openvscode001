FROM gitpod/workspace-full:latest

USER root


# Do your root Docker stuff here



RUN apt-get update                 \ 
    && apt-get clean               \
    && rm -rf /var/cache/apt/*     \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /tmp/*


# now switch to the gitpod user

USER gitpod

RUN mkdir -p /home/gitpod/docker-logs                   \ 
    && touch /home/gitpod/docker-logs/myDockerlog.txt   \  
 
 
RUN echo "Hello from the Dockerfile build"                  >> /home/gitpod/docker-logs/myDockerlog.txt     \
    && echo "Do most of your non-install Docker Stuff here" >> /home/gitpod/docker-logs/myDockerlog.txt     



# Do most of your Gitpod Docker stuff here 



RUN echo "Good bye from the Dockerfile build"               >> /home/gitpod/docker-logs/myDockerlog.txt





# Give back control
USER root
# Cleaning
RUN apt-get clean


