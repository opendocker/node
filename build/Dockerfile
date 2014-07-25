#
# Node.js image
#
# https://github.com/opendocker/node
#

# python base
FROM opendocker/python:0.1.0

# Add our build directory
RUN mkdir /build
ADD . /build

# Run our stuff
RUN \
	/build/install.sh && \
	/build/cleanup.sh

# Set node as default command
CMD ["/sbin/my_init", "--", "/usr/local/bin/node"]
