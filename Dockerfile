FROM ruby:2.3.3

WORKDIR /chef

ADD chefdk_1.2.22-1_amd64.deb /chef
RUN dpkg -i chefdk_1.2.22-1_amd64.deb
RUN echo "PATH=$PATH:/root/.chefdk/gem/ruby/2.3.0/bin" >> ~/.bashrc
RUN chef gem install knife-zero

ENTRYPOINT ["knife", "zero"]
