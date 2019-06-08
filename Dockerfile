FROM gitpod/workspace-full:latest

USER root

RUN apt-get update \
    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

# Do other root Docker stuff here


USER gitpod

RUN mkdir -p /home/gitpod/logs              \ 
    && touch /home/gitpod/logs/mylogs.txt   \  
 
 
RUN echo "Hello from the Dockerfile build\n" >> /home/gitpod/rocksetta/logs/mylogs.txt 

# Do most of your Docker stuff here 

RUN echo "Good bye from the Dockerfile build\n" >> /home/gitpod/rocksetta/logs/mylogs.txt 





# Give back control
USER root
# Cleaning
RUN apt-get clean
