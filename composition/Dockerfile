FROM node:0.12

ENV PURESCRIPT_VERSION 0.7.3

ENV PURESCRIPT_DOWNLOAD_SHA1 412670feb92635336162e6c1996e989d370a8ef8

ENV CI true

RUN adduser --disabled-password --gecos '' pscuser

RUN cd /opt && wget "https://github.com/purescript/purescript/releases/download/v${PURESCRIPT_VERSION}/linux64.tar.gz" \
            && echo "$PURESCRIPT_DOWNLOAD_SHA1  linux64.tar.gz" | sha1sum -c - \
            && tar -xvf linux64.tar.gz \
            && rm /opt/linux64.tar.gz

ENV PATH /opt/purescript:$PATH

RUN npm install -g pulp

USER pscuser
WORKDIR /home/pscuser

CMD ["psc --version"]

