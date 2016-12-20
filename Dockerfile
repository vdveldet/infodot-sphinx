# Format: FROM    repository[:version]
FROM       ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

# Update apt-get sources AND install stuff
# RUN apt-get update && apt-get install -y -q python-sphinx texlive texlive-latex-extra pandoc build-essential
RUN apt-get update 
RUN apt-get install -y -q python-pip texlive texlive-latex-extra pandoc build-essential
RUN pip install Sphinx>1.5
RUN pip install sphinx_rtd_theme
RUN pip install alabaster 
RUN pip install sphinx_bootstrap_theme
RUN pip install sphinxcontrib-phpdomain

RUN mkdir documents

WORKDIR /documents
VOLUME /documents

CMD ["/bin/bash"]



