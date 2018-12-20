FROM centos:7
MAINTAINER Artem Arzamasov

RUN yum install -y gcc-c++ patch readline \
    readline-devel zlib zlib-devel \
    libyaml-devel libffi-devel openssl-devel make \
    bzip2 autoconf automake libtool \
    bison iconv-devel sqlite-devel which \
    && yum autoremove -y

RUN curl -sSL https://rvm.io/mpapis.asc | gpg --import - \
    && curl -sSL https://rvm.io/pkuczynski.asc | gpg2 --import - \
    && curl -L get.rvm.io | bash -s stable

RUN /bin/bash -l -c ". /etc/profile.d/rvm.sh && rvm reload && rvm requirements run && rvm install 2.5"
RUN /bin/bash -l -c ". /etc/profile.d/rvm.sh && rvm use 2.5 --default"
RUN /bin/bash -l -c ". /etc/profile.d/rvm.sh && gem install lono"
RUN /bin/bash -l -c ". /etc/profile.d/rvm.sh && lono -v"

RUN yum install -y wget zsh git
RUN wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh
ENV TERM=xterm

RUN sh ./install.sh && rm ./install.sh

ENTRYPOINT ["/bin/zsh"]