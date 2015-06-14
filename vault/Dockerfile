from centos:centos7

ENV VAULT_VERSION 0.1.2
ENV VAULT_TMP /tmp/vault.zip
ENV VAULT_HOME /usr/local/bin
ENV PATH $PATH:${VAULT_HOME}


RUN yum install wget bash unzip -y && \
    wget --no-check-certificate --quiet --output-document=${VAULT_TMP} https://dl.bintray.com/mitchellh/vault/vault_${VAULT_VERSION}_linux_amd64.zip && \
    unzip ${VAULT_TMP} -d ${VAULT_HOME} && \
    rm -f ${VAULT_TMP}

COPY /config /etc/vault/config

EXPOSE 8200

ENTRYPOINT ["/usr/local/bin/vault"]
CMD ["version"]

