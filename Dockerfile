FROM phusion/baseimage

MAINTAINER vdvelde.t@gmail.com

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update 
RUN apt-get install -y -q python-pip
RUN apt-get install -y -q texlive-latex-recommended texlive-fonts-recommended
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN pip install --upgrade pip
RUN pip install --no-cache-dir Sphinx>1.5 pandoc sphinx_rtd_theme alabaster sphinx_bootstrap_theme sphinxcontrib-phpdomain rst2pdf sphinxcontrib-blockdiag

RUN mkdir documents

WORKDIR /documents
VOLUME /documents

CMD ["/bin/bash"]



