FROM hpess/chef:latest
MAINTAINER Karl Stoney <karl@jambr.co.uk>

# Install pre-reqs
RUN yum -y install git-core && \ 
    yum -y clean all

RUN cd /opt && \
    git clone --depth=1 https://github.com/RuudBurger/CouchPotatoServer.git

COPY services/* /etc/supervisord.d/
COPY cookbooks/ /chef/cookbooks/

RUN useradd couchpotato

RUN chown -R couchpotato:couchpotato /opt/CouchPotatoServer

EXPOSE 5050

ENV chef_node_name couchpotato.docker.local
ENV chef_run_list couchpotato 
