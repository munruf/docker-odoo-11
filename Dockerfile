FROM ubuntu
MAINTAINER Vahe Sahakyan <munruf.vs@gmail.com>

RUN apt update
RUN  apt install -y sudo\
            nano

COPY ./odoo_install.sh odoo_install.sh

RUN sudo chmod +x odoo_install.sh
RUN sudo ./odoo_install.sh
