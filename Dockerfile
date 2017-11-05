FROM dostiharise/ubuntu-java-mysql
LABEL Gaurav Gogia <desmondmiles36@gmail.com>

# Making some important directories
RUN \
    mkdir /home/project    

RUN \
    mkdir /pig/

# Install vim & git
RUN \
    apt-get update && \
    apt-get install -y vim && \
    apt-get install -y git && \
    rm -rf /var/lib/apt/lists/*

# Download pig
ADD https://www-us.apache.org/dist/pig/pig-0.16.0/pig-0.16.0.tar.gz /pig/

# Untar pig
RUN \
 tar -xzf /pig/pig-0.16.0.tar.gz

RUN \
    rm -rf /pig/pig-0.16.0.tar.gz

RUN \
    mv pig-0.16.0 /pig/

# Set env for pig
ENV PIG_HOME /pig/pig-0.16.0
ENV PATH $PATH:/pig/pig-0.16.0/bin

#------------------------------------------------------------------------#
# How to use:
# Start mysql service using:
# service mysql start

# Test that pig, java, mysql, vim & git commands & make sure that they are working
# Find/cd into directory: /home/project/
# Download/clone your program & have fun playing with Big Data
