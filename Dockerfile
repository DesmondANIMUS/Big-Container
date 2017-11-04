FROM dostiharise/ubuntu-java-mysql
LABEL Gaurav Gogia <desmondmiles36@gmail.com>

RUN \
    mkdir /home/project

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
 tar -xzf /pig/pig-0.16.0.tar.gz /pig/

# Set env for pig
ENV PIG_HOME /pig/pig-0.16.0

#------------------------------------------------------------------------#
# Don't forget to update bashrc file by appending following two lines 
# export PIG_HOME=/pig/pig-0.16.0
# export PATH=$PATH:/pig/pig-0.16.0/bin
# Open bashrc using: vim ~/.bashrc

# Restart container

# Start mysql service using:
# service mysql start

# Test that pig, java, mysql, vim & git commands are working
# Find/cd into directory: /home/project/
# Download/code your program & have fun playing with Big Data